import SwiftUI

struct HomeCardView: View {
    @State var bus: ApproachInfo
    @State var from = "京都駅前"
    @State var to = "立命館大学"
//    var startTime = ["16:03", "16:24", "16:55"]
//    var stopTime = ["16:33", "16:54", "17:25"]
//    var line = "12号系統"
//    var stop = "1番乗り場"
//    var lines = ["12号系統", "15号系統", "12号系統"]
    
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
                    Text("00:05:12")
                        .font(.largeTitle)
                    HStack {
                        Text(bus.approachInfos[0].busStop)
                        Text(bus.approachInfos[0].busName)
                    }
                    ForEach(0 ..< 3) { index in
                        HStack {
                            Text(bus.approachInfos[0].realArrivalTime)
                            Text("→")
                            Text(bus.approachInfos[0].realArrivalTime)
                            Text(bus.approachInfos[0].busName)
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
                    )
                ]
            )
        )
    }
}
