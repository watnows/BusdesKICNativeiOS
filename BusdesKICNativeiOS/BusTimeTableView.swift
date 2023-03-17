//
//  BusTimeTableView.swift
//  BusdesKICNativeiOS
//
//  Created by 中川真一 on 2023/02/11.
//

import SwiftUI

struct BusTimeTableView: View{
    @State var hour = "16時"// ここの時間の取り方がわからないので仮で設定
    let time = ["16:03", "17:03", "17:30"]// とりあえずリストにしてます
    let busgoal = ["パナソニック", "パナソニック", "パナソニック"]// timeと同様
    var body: some View{
        VStack {
            Text(hour)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
            VStack {
                ForEach(0 ..< busgoal.count, id: \.self) { index in
                    HStack {
                        Text(time[index])
                            .padding(.trailing, 15)
                            .font(.system(.caption, design: .monospaced))
                        Text(busgoal[index])
                            .font(.system(.caption, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding(.trailing, 60)
                .listRowSeparatorTint(Color.white)
            }
        }
    }
}
struct BusTimeTableView_Previews: PreviewProvider{
    static var previews: some View{
        BusTimeTableView()
    }
}
