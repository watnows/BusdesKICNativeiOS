import SwiftUI

struct BusTimeTableView: View{
    var hours: Int = 0
    @State var hour = "16"// ここの時間の取り方がわからないので仮で設定
    let time = ["16:03", "17:03", "17:30"]// とりあえずリストにしてます
    let busgoal = ["パナソニック", "パナソニック", "パナソニック"]// timeと同様
    var body: some View{
        VStack {
            Text("\(hours)時")
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack {
                ForEach(0 ..< busgoal.count, id: \.self) { index in
                    HStack {
                        Text(time[index])
                            .padding(.trailing, 15)
                            .font(.system(.caption, design: .monospaced))
                        Text(busgoal[index])
                            .font(.system(.caption, design: .rounded))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 45)
                }
                .listRowSeparatorTint(Color.white)
            }
        }
    }
}
struct BusTimeTableView_Previews: PreviewProvider{
    static var previews: some View{
        BusTimeTableView(hours: 1)
    }
}
