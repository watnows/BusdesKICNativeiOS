//
//  FeedbackView.swift
//  BusdesKICNativeiOS
//
//  Created by 中川真一 on 2023/04/21.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
        MyWebView(url: "https://forms.gle/EkfH4jRu6PKhkEjPA")
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
