//
//  TwitterView.swift
//  BusdesKICNativeiOS
//
//  Created by 中川真一 on 2023/04/21.
//

import SwiftUI

struct TwitterView: View {
    var body: some View {
        MyWebView(url: "https://twitter.com/busdes_kic")
    }
}

struct TwitterView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterView()
    }
}
