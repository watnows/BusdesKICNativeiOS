import SwiftUI

struct SettingView: View {
    let campusbusschedule = "https://mercy34mercy.github.io/bustimer_kic/shuttle/schedule.jpg"
    let  canpasbustimetable = "https://mercy34mercy.github.io/bustimer_kic/shuttle/timetable.jpg"
    let terms = "https://mercy34mercy.github.io/bustimer_kic/policy/"
    let feedback = "https://forms.gle/EkfH4jRu6PKhkEjPA"
    let twitter = "https://twitter.com/busdes_kic"
    var body: some View {
        NavigationView{
            VStack{
                Text("Busdes!!!!")
                List{
                    Section{
                        NavigationLink(destination: MainWebView(url: campusbusschedule)){
                            Text("運行スケジュール")
                        }
                        NavigationLink(destination: MainWebView(url: canpasbustimetable)){
                            Text("時刻表")
                        }
                    } header: {
                        Text("キャンパス間シャトル")
                    }
                    Section{
                        NavigationLink(destination: MainWebView(url: terms)){
                            Text("利用規約")
                        }
                        NavigationLink(destination: MainWebView(url: feedback)){
                            Text("フィードバックを送信")
                        }
                        NavigationLink(destination: MainWebView(url: twitter)) {
                            Text("最新情報【Twitter】")
                        }
                    } header: {
                        Text("設定")
                    }
                }.listStyle(.insetGrouped)
            }
        }
    }
}
struct MainWebView: View {
    let url: String
    var body: some View {
        MyWebView(url: url)
    }
}
struct SetttingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
