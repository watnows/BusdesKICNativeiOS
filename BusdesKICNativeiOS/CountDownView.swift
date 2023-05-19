import SwiftUI
import Foundation

struct CountDownView: View {
    @Binding var realArrivalTime:String
    @State private var remainingTime: String = "00:00:20"
    

    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    

    var body: some View {
        VStack {
            Text(remainingTime)
        }
        .onReceive(timer, perform: { _ in
               calculateRemainingTime()
        })
    }
    
    private func convertToTodayDate(timeString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")

        guard let timeOnlyDate = dateFormatter.date(from: timeString) else {
            print("時刻の解析に失敗しました")
            return nil
        }

        let calendar = Calendar.current
        let now = Date()
        let todayComponents = calendar.dateComponents([.year, .month, .day], from: now)
        let timeComponents = calendar.dateComponents([.hour, .minute], from: timeOnlyDate)

        var combinedComponents = DateComponents()
        combinedComponents.year = todayComponents.year
        combinedComponents.month = todayComponents.month
        combinedComponents.day = todayComponents.day
        combinedComponents.hour = timeComponents.hour
        combinedComponents.minute = timeComponents.minute

        if let todayDateWithGivenTime = calendar.date(from: combinedComponents) {
            return todayDateWithGivenTime
        } else {
            print("日付の組み合わせに失敗しました")
            return nil
        }
    }

    private func calculateRemainingTime() {
        guard let targetTime = convertToTodayDate(timeString: realArrivalTime) else {
            remainingTime = "時刻の解析に失敗しました"
            return
        }

        let currentTime = Date()
        let timeInterval = targetTime.timeIntervalSince(currentTime)

        if timeInterval > 0 {
            let remainingHours = Int(timeInterval / 3600)
            let remainingMinutes = Int((timeInterval.truncatingRemainder(dividingBy: 3600)) / 60)
            let remainingSeconds = Int(timeInterval.truncatingRemainder(dividingBy: 60))
            remainingTime = String(format: "%02d:%02d:%02d", remainingHours, remainingMinutes, remainingSeconds)
        } else {
            remainingTime = "00:00:00"
        }
    }
}
