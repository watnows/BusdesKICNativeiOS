import SwiftUI

struct HomeCardView: View {
    @State var bus: ApproachInfo
    @State var from = "京都駅前"
    @State var to = "立命館大学"
    @State private var selectedIndex: Int = 0 // 選択されたインデックスを管理
    
    func updateBusData() async {
        do {
            let busResponse = try await fetchBus(fr: from, to: to)
            print("fetch")
            // 取得したデータを @State 変数にセット
            DispatchQueue.main.async {
                bus = busResponse
            }
        } catch {
            // エラーハンドリング
            print("Error fetching bus data: \(error)")
        }
    }
    
    func parseTime(time : String,requiredTime : Int) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"

        if let date = dateFormatter.date(from: time) {
            let calendar = Calendar.current
            if let newDate = calendar.date(byAdding: .minute, value: requiredTime, to: date) {
                return dateFormatter.string(from: newDate)
            }
        }
        return ""
    }
    
    var body: some View {
        HStack(alignment: .center) {
            VStack {
                HStack {
                    Text(from)
                        .font(.title2)
                        .padding(.leading, 30)
                    Spacer()
                    Text("→")
                        .font(.title)
                    Spacer()
                    Text(to)
                        .font(.title2)
                        .padding(.trailing, 30)
                }
                Group {
                    Text(bus.approachInfos[selectedIndex].realArrivalTime)
                        .font(.largeTitle)
                    HStack {
                        Text(bus.approachInfos[selectedIndex].busStop+"番乗り場")
                        Text(bus.approachInfos[selectedIndex].busName)
                    }
                    ForEach(0 ..< bus.approachInfos.count) { index in
                        HStack {
                            Text(bus.approachInfos[index].realArrivalTime).foregroundColor(selectedIndex == index ? .red : .black)
                            Text("→").foregroundColor(selectedIndex == index ? .red : .black)
                            Text(parseTime(time: bus.approachInfos[index].realArrivalTime, requiredTime: bus.approachInfos[index].requiredTime)).foregroundColor(selectedIndex == index ? .red : .black)
                            Text(bus.approachInfos[index].busName).foregroundColor(selectedIndex == index ? .red : .black)
                        }.onTapGesture {
                            selectedIndex = index
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                try await updateBusData()
            }
        }
    }
}

struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardView(
            bus: ApproachInfo(
                approachInfos: [
                    NextBusModel(
                        moreMin: "約n分後に到着",
                        realArrivalTime: "16:56",
                        direction: "立命館大学行き",
                        busName: "50号系統",
                        scheduledTime: "16:56",
                        delay: "定時運行",
                        busStop: "1",
                        requiredTime: 42
                    ),
                    NextBusModel(
                        moreMin: "約n分後に到着",
                        realArrivalTime: "16:56",
                        direction: "立命館大学行き",
                        busName: "50号系統",
                        scheduledTime: "16:56",
                        delay: "定時運行",
                        busStop: "1",
                        requiredTime: 42
                    ),
                    NextBusModel(
                        moreMin: "約n分後に到着",
                        realArrivalTime: "16:56",
                        direction: "立命館大学行き",
                        busName: "50号系統",
                        scheduledTime: "16:56",
                        delay: "定時運行",
                        busStop: "1",
                        requiredTime: 42
                    )
                ]
            )
        )
    }
}
