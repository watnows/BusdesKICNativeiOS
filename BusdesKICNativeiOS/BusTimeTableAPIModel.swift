import Foundation

struct NextBusModel: Codable {
    let moreMin: String // 遅れている時間(全て約n分後に到着）
    let realArrivalTime: String // 遅れを加味した到着時刻(kic版は遅れがわからない)
    let direction: String // 行き先
    let busName: String // バスの名前
    let scheduledTime: String // 定時の到着時刻
    let delay: String // 遅れ情報(全て定時運行)
    let busStop: String // 乗り場番号(今は固定値)
    let requiredTime: Int // 所要時間(今は固定値)
}

struct ApproachInfo: Codable {
    let approachInfos: [NextBusModel]
}

func fetchBus(fr: String, to: String) async throws{
    var urlComponents = URLComponents(string: "https://busdes-kic.mercy34.workers.dev/nextbus")!
    urlComponents.queryItems = [
    URLQueryItem(name: "fr", value: fr),
    URLQueryItem(name: "to", value: to)
    ]
    let request = URLRequest(url: urlComponents.url!)
    let (data, response) = try await URLSession.shared.data(for: request)
    guard let decodeData = try? JSONDecoder().decode(ApproachInfo.self, from: data) else {
        return
    }
    print(decodeData)
//    URLSession.shared.dataTask(with: request) { data, error, _ in
//        guard let data = data else {
//            return
//        }
//        do {
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let routeInfo = try decoder.decode(ApproachInfo.self, from: data)
//            print("!!!!")
//            print(routeInfo)
//            print("!!!!")
//        } catch let error{
//            print(error)
//        }
//    }
//    .resume()
}
