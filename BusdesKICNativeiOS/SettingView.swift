import SwiftUI

struct Setttingview: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Busdes!!!!")
                List{
                    Section{
                        NavigationLink(destination: CampusBusScheduleView()){
                            Text("運行スケジュール")
                        }
                        NavigationLink(destination: CampusBusTimeTableView()){
                            Text("時刻表")
                        }
                    } header: {
                        Text("キャンパス間シャトル")
                    }
                    Section{
                        NavigationLink(destination: TermsView()){
                                Text("利用規約")
                        }
                        NavigationLink(destination: FeedbackView()){
                                Text("フィードバックを送信")
                        }
                        NavigationLink(destination: TwitterView()){
                                Text("最新情報【Twitter】")
                        }
                    } header: {
                        Text("設定")
                    }
                }
            }
        }.navigationBarTitle(Text("Navigation"))
    }
}

struct Setttingview_Previews: PreviewProvider {
    static var previews: some View {
        Setttingview()
    }
}
