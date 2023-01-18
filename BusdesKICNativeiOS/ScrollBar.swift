//
//  ScrollBarView.swift
//  BusdesKICNativeiOS
//
//  Created by 黒川龍之介 on 2023/01/18.
//
// 参考サイト(https://shuhey-hashimoto.com/swiftui/%E3%80%90swiftui%E3%80%91%E7%B8%A6%E3%82%B9%E3%82%AF%E3%83%AD%E3%83%BC%E3%83%AB%E3%81%A8%E6%A8%AA%E3%82%B9%E3%82%AF%E3%83%AD%E3%83%BC%E3%83%AB/)

import SwiftUI

struct ScrollBar: View {
    var body: some View {
        HStack{
            Spacer(minLength: 50)
            //showsIndecatorsでバーが出るか選択できる
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<10){ _ in
                        TabButton()
                        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            Spacer(minLength: 50)
        }
    }
}

struct ScrollBar_Previews: PreviewProvider {
    static var previews: some View {
        ScrollBar()
    }
}
