// 参考記事 スクロール部分(https://d1v1b.com/swiftui/scroll)
// tabviewとの連動(https://hack.nikkei.com/blog/advent20201201/)
// tabviewの下線(https://zenn.dev/chiii/articles/748093ee3b0bf8)

import SwiftUI

struct TimeTableView: View {
    @State var selection = 0
    @State var stop = "立命館大学　衣笠キャンパス"
    @State var stops = BusStopModel.line12
    let hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
    var body: some View{
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                HStack {
                    Text("出発")
                    Spacer()
                    Text(stop)
                        .font(.headline)
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "arrow.up.arrow.down")
                    })
                    .frame(width: 40, height: 40)
                    .background(.black)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                }
                Text("↓")
                    .font(.title)
                HStack {
                    Text("到着")
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        ScrollViewReader { proxy in
                            HStack {
                                ForEach(0 ..< stops.count) { index in
                                    Text(stops[index].name)
                                        .font(.headline)
                                        .padding(.init(top: 4, leading: 8, bottom: 4, trailing: 8))
                                        .decorate(isSelected: index == selection)
                                        .id(index)
                                        .tag(index)
                                        .onTapGesture(perform: {
                                            selection = index
                                        })
                                }
                            }
                            .onChange(of: selection, perform: { index in
                                withAnimation {
                                    proxy.scrollTo(index, anchor: .center)
                                }
                            })
                        }
                    }
                }
            }
            .padding(.horizontal)
            .background(Color(red: 255 / 255, green: 230 / 255, blue: 0 / 255))
            TabView(selection: $selection) {
                    ForEach(0..<stops.count) { num in
                        ZStack {
                            List {
                                ForEach(0 ..< hours.count) {hour in
                                    BusTimeTableView(hours: hour)
                                }
                            }
                            .listStyle(.inset)
                        }
                        .tag(num)
                    }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct TimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTableView()
    }
}

struct TabItem: ViewModifier {
    let isSelected: Bool
    @Namespace var namespace
    @ViewBuilder
    func body(content: Content) -> some View {
        if isSelected {
            VStack {
                content
                Color.black.frame(height: 4)
                    .matchedGeometryEffect(id: "underline", in: namespace, properties: .frame)
            }
        } else {
            content
                .foregroundColor(Color(.label))
        }
    }
}

extension View {
    func decorate(isSelected: Bool) -> some View {
        self.modifier(TabItem(isSelected: isSelected))
    }
}
