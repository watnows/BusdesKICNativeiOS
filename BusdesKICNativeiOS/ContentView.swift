//
//  ContentView.swift
//  BusdesKICNativeiOS
//
//  Created by 黒川龍之介 on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
            .accentColor( Color(hue: 0.01, saturation: 0.71, brightness: 0.80))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
