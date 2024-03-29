import SwiftUI

struct HomeView: View {
    var body: some View{
        List {
            ForEach(0..<1) { _ in
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
            .listRowSeparator(.hidden)
            .listRowBackground(
                RoundedRectangle(cornerRadius: 5)
                    .background(.clear)
                    .foregroundColor(.white)
                    .padding(
                        EdgeInsets(
                            top: 5,
                            leading: 5,
                            bottom: 5,
                            trailing: 5
                        )
                    )
                    .shadow(radius: 2)
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
