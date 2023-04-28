import Foundation

struct TimeTable: Codable {
    var weekdays: TimeList
    var holidays: TimeList
}

struct TimeTableInfo: Codable {
    let busName: String
    let min: String
    let busStop: String
}

struct TimeList: Codable {
    let five: [TimeTableInfo]
    let six: [TimeTableInfo]
    let seven: [TimeTableInfo]
    let eight: [TimeTableInfo]
    let nine: [TimeTableInfo]
    let ten: [TimeTableInfo]
    let eleven: [TimeTableInfo]
    let twelve: [TimeTableInfo]
    let thirteen: [TimeTableInfo]
    let fourteen: [TimeTableInfo]
    let fifteen: [TimeTableInfo]
    let sixteen: [TimeTableInfo]
    let seventeen: [TimeTableInfo]
    let eighteen: [TimeTableInfo]
    let nineteen: [TimeTableInfo]
    let twenty: [TimeTableInfo]
    let twentyone: [TimeTableInfo]
    let twentytwo: [TimeTableInfo]
    let twentythree: [TimeTableInfo]
    let twentyfour: [TimeTableInfo]

    enum CodingKeys: String, CodingKey {
        case ten = "10"
        case eleven = "11"
        case twelve = "12"
        case thirteen = "13"
        case fourteen = "14"
        case fifteen = "15"
        case sixteen = "16"
        case seventeen = "17"
        case eighteen = "18"
        case nineteen = "19"
        case twenty = "20"
        case twentyone = "21"
        case twentytwo = "22"
        case twentythree = "23"
        case twentyfour = "24"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
    }
}

func fetchTimeTable(fr: String, to: String) async throws {
    var urlComponents = URLComponents(string: "https://busdes-kic.mercy34.workers.dev/timetable")!
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    urlComponents.queryItems = [
        URLQueryItem(name: "fr", value: fr),
        URLQueryItem(name: "to", value: to)
    ]
    let request = URLRequest(url: urlComponents.url!)
    let (data, response) = try await URLSession.shared.data(for: request)
    guard let decodeData = try? decoder.decode(TimeTable.self, from: data) else {
        return
    }
}
