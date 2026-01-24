import SwiftData

// MARK: - 排程項目模型
@Model
final class ScheduleItem {
    // 1. 屬性定義
    @Attribute(.unique) var id: UUID = UUID()
    var title: String
    var startTime: Date
    var endTime: Date
    var place: String
    var withWho: String
    
    // 2. 關聯性：一個項目屬於一個分類
    // 當 ScheduleItem 被刪除時，分類不應該被刪除，所以用 .nullify
    var category: Category?

    init(title: String, 
         startTime: Date = .now, 
         endTime: Date = .now.addingTimeInterval(3600), 
         place: String = "", 
         withWho: String = "" ){
        self.title = title
        self.startTime = startTime
        self.endTime = endTime
        self.place = place
        self.withWho = withWho
    
    }
}
