//
//  CampusBusScheduleView.swift
//  BusdesKICNativeiOS
//
//  Created by 中川真一 on 2023/04/21.
//

import SwiftUI

struct CampusBusScheduleView: View {
    var body: some View {
        MyWebView(url: "https://mercy34mercy.github.io/bustimer_kic/shuttle/schedule.jpg")
    }
}

struct CampusBusScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        CampusBusScheduleView()
    }
}
