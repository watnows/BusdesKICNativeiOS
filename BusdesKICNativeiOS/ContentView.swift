import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView{
                HomeView()
                    .tabItem{
                        TabButton()
                        Text("Next bus")
                            .clipShape(Capsule())
                    }

                TimeTableView()
                    .tabItem{
                        Text("TimeTable")
                    }
            }
            .accentColor(.black)
            .navigationTitle("Busdes!")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
