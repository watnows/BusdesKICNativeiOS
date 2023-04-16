import SwiftUI

struct HomeCardView: View {
    @State var bus: NextBusModel
    @State var from = "京都駅前"
    @State var to = "立命館大学"
    var startTime = ["16:03", "16:24", "16:55"]
    var stopTime = ["16:33", "16:54", "17:25"]
    var line = "12号系統"
    var stop = "1番乗り場"
    var lines = ["12号系統", "15号系統", "12号系統"]
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
                        Text(line)
                        Text(stop)
                    }
                    ForEach(0 ..< 3) { index in
                        HStack {
                            Text(startTime[index])
                            Text("→")
                            Text(stopTime[index])
                            Text(lines[index])
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                try await fetchBus(fr: from, to: to)
            }
        }
    }
}

struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardView(
            bus: NextBusModel(
                moreMin: "約n分後に到着",
                realArrivalTime: "16:56",
                direction: "立命館大学行き",
                busName: "50号系統",
                scheduledTime: "16:56",
                delay: "定時運行",
                busStop: "1",
                requiredTime: 42
            )
        )
    }
}
