//
//  TimeTableView.swift
//  BusdesKICNativeiOS
//
//  Created by 黒川龍之介 on 2022/12/08.
//

import SwiftUI

struct TimeTableView: View {
    var body: some View{
        ZStack{
            RadialGradient(stops: [.init(color: Color(hue: 0.01, saturation: 0.71, brightness: 0.80), location: 0.5), .init(color: Color(hue: 0.7, saturation: 0.02, brightness: 0.98), location: 0.3)], center: .top, startRadius: 200, endRadius: 400)
            Text("TimeTable")
        }
    }

}

struct TimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTableView()
    }
}
