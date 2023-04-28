import Foundation

struct NextBusModel: Decodable {
    let moreMin: String // 遅れている時間(全て約n分後に到着）
    let realArrivalTime: String // 遅れを加味した到着時刻(kic版は遅れがわからない)
    let direction: String // 行き先
    let busName: String // バスの名前
    let scheduledTime: String // 定時の到着時刻
    let delay: String // 遅れ情報(全て定時運行)
    let busStop: String // 乗り場番号(今は固定値)
    let requiredTime: Int // 所要時間(今は固定値)
}

struct ApproachInfo: Decodable {
    let approachInfos: [NextBusModel]
}

func fetchBus(fr: String, to: String) async throws -> ApproachInfo{
    var urlComponents = URLComponents(string: "https://bustimer.azurewebsites.net/nextbus")!
    
    urlComponents.queryItems = [
    URLQueryItem(name: "fr", value: fr),
    URLQueryItem(name: "to", value: to)
    ]
    
    // クエリパラメータが追加された URL を生成
    guard let url = urlComponents.url else {
        throw URLError(.badURL)
    }
    
    
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let (data, _) = try await URLSession.shared.data(from: url)
        let busResponse = try decoder.decode(ApproachInfo.self, from: data)
        return busResponse
    } catch {
        throw error
    }
    

//    let decoder = JSONDecoder()
//    decoder.keyDecodingStrategy = .convertFromSnakeCase
//    urlComponents.queryItems = [
//    URLQueryItem(name: "fr", value: fr),
//    URLQueryItem(name: "to", value: to)
//    ]
//    let request = URLRequest(url: urlComponents.url!)
//    let (data, response) = try await URLSession.shared.data(for: request)
//    guard let decodeData = try? decoder.decode(ApproachInfo.self, from: data) else {
//        return
//    }
//    return decodeData
}
