//
//  BusTimeTableView.swift
//  BusdesKICNativeiOS
//
//  Created by 中川真一 on 2023/02/11.
//

import SwiftUI

struct BusTimeTableView: View{
    
    @State var hour = "16時"//ここの時間の取り方がわからないので仮で設定
    let time = ["16:03","17:03","17:30"]//とりあえずリストにしてます
    let busgoal = ["パナソニック","パナソニック","パナソニック"]//timeと同様
    
    var body: some View{
        List{
            Section{
                ForEach(0 ..< busgoal.count){index in
                    HStack{
                        Text(time[index])
                            .padding(.trailing,15)
                            .font(.system(.caption,design: .monospaced))
                        Text(busgoal[index])
                            .font(.system(.caption,design: .rounded))
                    }
                    .padding(.bottom,0)
                    .padding(.top,0)
                }
                .padding(.leading,70)
                .padding(.bottom,1)
                .padding(.top,1)
                .listRowSeparatorTint(Color.white)
            }header: {
                Text(hour)
                    .font(.system(.body,design: .rounded))
                    .foregroundColor(.black)
                    .padding(.vertical,8)
                    .padding(.leading,20)
            }
        }
        .listStyle(.plain)
        .listSectionSeparator(.hidden)
        .environment(\.defaultMinListRowHeight,25)
    }
}
struct BusTimeTableView_Previews: PreviewProvider{
    static var previews: some View{
        BusTimeTableView()
    }
}
