//
//  busStopModel.swift
//  BusdesKICNativeiOS
//
//  Created by 黒川龍之介 on 2023/02/10.
//

import Foundation

struct BusStopModel {
    let name: String
    let kana: String
}

extension BusStopModel {
    static let line12: [BusStopModel] = [
        BusStopModel(name: "三条京阪前", kana: "さんじょうけいはんまえ"),
        BusStopModel(name: "四条京阪前", kana: "しじょうけいはんまえ"),
        BusStopModel(name: "四条河原町", kana: "しじょうかわらまち"),
        BusStopModel(name: "四条高倉", kana: "しじょうたかくら"),
        BusStopModel(name: "四条烏丸《地下鉄四条駅》", kana: "しじょうからすま《ちかてつしじょうえき》"),
        BusStopModel(name: "四条烏丸", kana: "しじょうからすま"),
        BusStopModel(name: "四条西洞院", kana: "しじょうにしのとういん"),
        BusStopModel(name: "四条堀川", kana: "しじょうほりかわ"),
        BusStopModel(name: "堀川蛸薬師", kana: "ほりかわたこやくし"),
        BusStopModel(name: "堀川三条", kana: "ほりかわさんじょう"),
        BusStopModel(name: "堀川御池", kana: "ほりかわおいけ"),
        BusStopModel(name: "二条城前", kana: "にじょうじょうまえ"),
        BusStopModel(name: "堀川丸太町", kana: "ほりかわまるたちょう"),
        BusStopModel(name: "堀川下立売", kana: "ほりかわしもだちうり"),
        BusStopModel(name: "堀川下長者町", kana: "ほりかわしもちょうじゃまち"),
        BusStopModel(name: "堀川中立売", kana: "ほりかわなかだちうり"),
        BusStopModel(name: "一条戻橋・晴明神社前", kana: "いちじょうもどりばし・せいめいじんじゃまえ"),
        BusStopModel(name: "堀川今出川", kana: "ほりかわいまでがわ"),
        BusStopModel(name: "堀川上立売", kana: "ほりかわかみだちうり"),
        BusStopModel(name: "堀川寺ノ内", kana: "ほりかわてらのうち"),
        BusStopModel(name: "天神公園前", kana: "てんじんこうえんまえ"),
        BusStopModel(name: "堀川鞍馬口", kana: "ほりかわくらまぐち"),
        BusStopModel(name: "北大路堀川", kana: "きたおおじほりかわ"),
        BusStopModel(name: "大徳寺前", kana: "だいとくじまえ"),
        BusStopModel(name: "建勲神社前", kana: "けんくんじんじゃまえ"),
        BusStopModel(name: "船岡山", kana: "ふなおかやま"),
        BusStopModel(name: "千本北大路", kana: "せんぼんきたおおじ"),
        BusStopModel(name: "金閣寺道", kana: "きんかくじみち"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let line50: [BusStopModel] = [
        BusStopModel(name: "京都駅前", kana: "きょうとえきまえ"),
        BusStopModel(name: "七条西洞院", kana: "しちじょうにしのとういん"),
        BusStopModel(name: "西洞院正面", kana: "にしのとういんしょうめん"),
        BusStopModel(name: "西洞院六条", kana: "にしのとういんろくじょう"),
        BusStopModel(name: "五条西洞院", kana: "ごじょうにしのとういん"),
        BusStopModel(name: "西洞院松原", kana: "にしのとういんまつばら"),
        BusStopModel(name: "西洞院仏光寺", kana: "にしのとういんぶっこうじ"),
        BusStopModel(name: "四条西洞院", kana: "しじょうにしのとういん"),
        BusStopModel(name: "四条堀川", kana: "しじょうほりかわ"),
        BusStopModel(name: "堀川蛸薬師", kana: "ほりかわたこやくし"),
        BusStopModel(name: "堀川三条", kana: "ほりかわさんじょう"),
        BusStopModel(name: "堀川御池", kana: "ほりかわおいけ"),
        BusStopModel(name: "二条城前", kana: "にじょうじょうまえ"),
        BusStopModel(name: "堀川丸太町", kana: "ほりかわまるたちょう"),
        BusStopModel(name: "堀川下立売", kana: "ほりかわしもだちうり"),
        BusStopModel(name: "堀川下長者町", kana: "ほりかわしもちょうじゃまち"),
        BusStopModel(name: "堀川中立売", kana: "ほりかわなかだちうり"),
        BusStopModel(name: "大宮中立売", kana: "おおみやなかだちうり"),
        BusStopModel(name: "智恵光院中立売", kana: "ちえこういんなかだちうり"),
        BusStopModel(name: "千本中立売", kana: "せんぼんなかだちうり"),
        BusStopModel(name: "千本今出川", kana: "せんぼんいまでがわ"),
        BusStopModel(name: "上七軒", kana: "かみしちけん"),
        BusStopModel(name: "北野天満宮前", kana: "きたのてんまんぐうまえ"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let line205: [BusStopModel] = [
        BusStopModel(name: "京都駅前", kana: "きょうとえきまえ"),
        BusStopModel(name: "烏丸七条", kana: "からすましちじょう"),
        BusStopModel(name: "七条大宮・京都水族館前", kana: "しちじょうおおみや・きょうとすいぞくかんまえ"),
        BusStopModel(name: "七条千本", kana: "しちじょうせんぼん"),
        BusStopModel(name: "西大路七条", kana: "にしおおじしちじょう"),
        BusStopModel(name: "西大路五条", kana: "にしおおじごじょう"),
        BusStopModel(name: "西大路四条《阪急･嵐電西院駅》", kana: "にしおおじしじょう《はんきゅう・らんでんさいえき》"),
        BusStopModel(name: "西大路三条", kana: "にしおおじさんじょう"),
        BusStopModel(name: "西大路御池", kana: "にしおおじおいけ"),
        BusStopModel(name: "西ノ京円町《ＪＲ円町駅》", kana: "にしのきょうえんまち《じぇいあーるえんまちえき》"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "西大路駅", kana: "にしおおじえき")
    ]

    static let line15: [BusStopModel] = [
        BusStopModel(name: "三条京阪前", kana: "さんじょうけいはんまえ"),
        BusStopModel(name: "四条京阪前", kana: "しじょうけいはんまえ"),
        BusStopModel(name: "四条河原町", kana: "しじょうかわらまち"),
        BusStopModel(name: "河原町三条", kana: "かわらまちさんじょう"),
        BusStopModel(name: "京都市役所前", kana: "きょうとしやくしょまえ"),
        BusStopModel(name: "堺町御池", kana: "さかいまちおいけ"),
        BusStopModel(name: "烏丸御池", kana: "からすまおいけ"),
        BusStopModel(name: "新町御池", kana: "しんまちおいけ"),
        BusStopModel(name: "堀川御池", kana: "ほりかわおいけ"),
        BusStopModel(name: "神泉苑前", kana: "しんせんえんまえ"),
        BusStopModel(name: "二条駅前", kana: "にじょうえきまえ"),
        BusStopModel(name: "千本旧二条", kana: "せんぼんきゅうにじょう"),
        BusStopModel(name: "千本丸太町", kana: "せんぼんまるたちょう"),
        BusStopModel(name: "丸太町七本松", kana: "まるたちょうしちほんまつ"),
        BusStopModel(name: "丸太町御池通", kana: "まるたちょうおいけどおり"),
        BusStopModel(name: "西ノ京円町《ＪＲ円町駅》", kana: "にしのきょうえんまち《じぇいあーるえんまちえき》"),
        BusStopModel(name: "北野中学前", kana: "きたのちゅうがくまえ"),
        BusStopModel(name: "大将軍", kana: "だいしょうぐん"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let lineM1: [BusStopModel] = [
        BusStopModel(name: "北大路バスターミナル", kana: "きたおおじばすたーみなる"),
        BusStopModel(name: "北大路新町", kana: "きたおおじしんまち"),
        BusStopModel(name: "北大路堀川", kana: "きたおおじほりかわ"),
        BusStopModel(name: "大徳寺前", kana: "だいとくじまえ"),
        BusStopModel(name: "建勲神社前", kana: "けんくんじんじゃまえ"),
        BusStopModel(name: "船岡山", kana: "ふなおかやま"),
        BusStopModel(name: "千本北大路", kana: "せんぼんきたおおじ"),
        BusStopModel(name: "金閣寺道", kana: "きんかくじみち"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let line52: [BusStopModel] = [
        BusStopModel(name: "四条烏丸《地下鉄四条駅》", kana: "しじょうからすま《ちかてつしじょうえき》"),
        BusStopModel(name: "四条西洞院", kana: "しじょうにしのとういん"),
        BusStopModel(name: "四条堀川", kana: "しじょうほりかわ"),
        BusStopModel(name: "四条大宮", kana: "しじょうおおみや"),
        BusStopModel(name: "みぶ操車場前", kana: "みぶそうしゃじょうまえ"),
        BusStopModel(name: "千本三条・朱雀立命館前", kana: "せんぼんさんじょう・すざくりつめいかんまえ"),
        BusStopModel(name: "二条城前", kana: "にじょうじょうまえ"),
        BusStopModel(name: "千本旧二条", kana: "せんぼんきゅうにじょう"),
        BusStopModel(name: "千本丸太町", kana: "せんぼんまるたちょう"),
        BusStopModel(name: "丸太町七本松", kana: "まるたちょうしちほんまつ"),
        BusStopModel(name: "七本松出水", kana: "しちほんまつでみず"),
        BusStopModel(name: "七本松仁和寺街道", kana: "しちほんまつにんなじかいどう"),
        BusStopModel(name: "上七軒", kana: "かみしちけん"),
        BusStopModel(name: "北野天満宮", kana: "きたのてんまんぐう"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let line51: [BusStopModel] = [
        BusStopModel(name: "三条京阪前", kana: "さんじょうけいはんまえ"),
        BusStopModel(name: "四条京阪前", kana: "しじょうけいはんまえ"),
        BusStopModel(name: "四条河原町", kana: "しじょうかわらまち"),
        BusStopModel(name: "河原町三条", kana: "かわらまちさんじょう"),
        BusStopModel(name: "京都市役所前", kana: "きょうとしやくしょまえ"),
        BusStopModel(name: "堺町御池", kana: "さかいまちおいけ"),
        BusStopModel(name: "烏丸二条", kana: "からすまにじょう"),
        BusStopModel(name: "烏丸御池", kana: "からすまおいけ"),
        BusStopModel(name: "烏丸丸太町《地下鉄丸太町駅》", kana: "からすままるたちょう《ちかてつまるたちょうえき》"),
        BusStopModel(name: "烏丸下立売", kana: "からすましもだちうり"),
        BusStopModel(name: "烏丸下長者町", kana: "からすましもちょうじゃまち"),
        BusStopModel(name: "烏丸一条", kana: "からすまいちじょう"),
        BusStopModel(name: "烏丸今出川《地下鉄今出川駅》", kana: "からすまいまでがわ《ちかてついまでがわ》"),
        BusStopModel(name: "上京区総合庁舎前", kana: "じょうきょうくそうごうちょうしゃまえ"),
        BusStopModel(name: "堀川今出川", kana: "ほりかわいまでがわ"),
        BusStopModel(name: "今出川大宮", kana: "いまでがわおおみや"),
        BusStopModel(name: "今出川浄福寺", kana: "いまでがわじょうふくじ"),
        BusStopModel(name: "千本今出川", kana: "せんぼんいまでがわ"),
        BusStopModel(name: "上七軒", kana: "かみしちけん"),
        BusStopModel(name: "北野天満宮", kana: "きたのてんまんぐう"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "小松原児童公園前", kana: "こまつばらじどうこうえんまえ"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]

    static let line59: [BusStopModel] = [
        BusStopModel(name: "四条河原町", kana: "しじょうかわらまち"),
        BusStopModel(name: "四条京阪前", kana: "しじょうけいはんまえ"),
        BusStopModel(name: "三条京阪前", kana: "さんじょうけいはんまえ"),
        BusStopModel(name: "河原町三条", kana: "かわらまちさんじょう"),
        BusStopModel(name: "京都市役所前", kana: "きょうとしやくしょまえ"),
        BusStopModel(name: "烏丸丸太町", kana: "からすままるたちょう"),
        BusStopModel(name: "荒神口", kana: "こうじんぐち"),
        BusStopModel(name: "府立医大病院前", kana: "ふりついだいびょういんまえ"),
        BusStopModel(name: "河原町今出川", kana: "かわらちょういまでがわ"),
        BusStopModel(name: "同志社前", kana: "どうししゃまえ"),
        BusStopModel(name: "烏丸今出川", kana: "からすまいまでがわ"),
        BusStopModel(name: "上京区総合庁舎前", kana: "じょうきょうくそうごうちょうしゃまえ"),
        BusStopModel(name: "堀川今出川", kana: "ほりかわいまでがわ"),
        BusStopModel(name: "今出川大宮", kana: "いまでがわおおみや"),
        BusStopModel(name: "今出川浄福寺", kana: "いまでがわじょうふくじ"),
        BusStopModel(name: "千本今出川", kana: "せんぼんいまでがわ"),
        BusStopModel(name: "千本上立売", kana: "せんぼんかみだちうり"),
        BusStopModel(name: "乾隆校前", kana: "けんりゅうこうまえ"),
        BusStopModel(name: "千本鞍馬口", kana: "せんぼんくらまぐち"),
        BusStopModel(name: "ライトハウス前", kana: "らいとはうすまえ"),
        BusStopModel(name: "千本北大路", kana: "せんぼんきたおおじ"),
        BusStopModel(name: "金閣寺道", kana: "きんかくじみち"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ"),
        BusStopModel(name: "龍安寺前", kana: "りょうあんじまえ"),
        BusStopModel(name: "塔ノ下町", kana: "とうのしたちょう"),
        BusStopModel(name: "御室", kana: "おむろ"),
        BusStopModel(name: "御室仁和寺", kana: "おむろにんなじ"),
        BusStopModel(name: "福王子", kana: "ふくおうじ"),
        BusStopModel(name: "鳴滝本町", kana: "なるたきほんまち"),
        BusStopModel(name: "宇多野病院前", kana: "うたのびょういんまえ"),
        BusStopModel(name: "ユースホステル前", kana: "ゆーすほてるまえ"),
        BusStopModel(name: "山越", kana: "やまごし"),
        BusStopModel(name: "広沢池・佛大広沢校前", kana: "ひろさわのいけ・ぶつだいひろさわこうまえ"),
        BusStopModel(name: "山越中町", kana: "やまごえなかちょう")
    ]

    static let line55: [BusStopModel] = [
        BusStopModel(name: "四条烏丸《地下鉄四条駅》", kana: "しじょうからすま《ちかてつしじょうえき》"),
        BusStopModel(name: "四条西洞院", kana: "しじょうにしのとういん"),
        BusStopModel(name: "四条堀川", kana: "しじょうほりかわ"),
        BusStopModel(name: "四条大宮", kana: "しじょうおおみや"),
        BusStopModel(name: "みぶ操車場前", kana: "みぶそうしゃじょうまえ"),
        BusStopModel(name: "千本三条・朱雀立命館前", kana: "せんぼんさんじょう・すざくりつめいかんまえ"),
        BusStopModel(name: "二条城前", kana: "にじょうじょうまえ"),
        BusStopModel(name: "千本旧二条", kana: "せんぼんきゅうにじょう"),
        BusStopModel(name: "千本丸太町", kana: "せんぼんまるたちょう"),
        BusStopModel(name: "丸太町七本松", kana: "まるたちょうしちほんまつ"),
        BusStopModel(name: "七本松出水", kana: "しちほんまつでみず"),
        BusStopModel(name: "七本松仁和寺街道", kana: "しちほんまつにんなじかいどう"),
        BusStopModel(name: "上七軒", kana: "かみしちけん"),
        BusStopModel(name: "北野天満宮", kana: "きたのてんまんぐう"),
        BusStopModel(name: "北野白梅町", kana: "きたのはくばいちょう"),
        BusStopModel(name: "衣笠校前", kana: "きぬがさこうまえ"),
        BusStopModel(name: "わら天神前", kana: "わらてんじんまえ"),
        BusStopModel(name: "桜木町", kana: "さくらぎちょう"),
        BusStopModel(name: "立命館大学前", kana: "りつめいかんだいがくまえ")
    ]
}
