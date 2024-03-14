import Foundation

enum Gender: CaseIterable, CustomStringConvertible {
    case male
    case female
    case unselected
    
    var description: String {
        switch self {
        case .male: return "男性"
        case .female: return "女性"
        case .unselected: return "選択してください"
        }
    }
}

enum Prefecture: CaseIterable, CustomStringConvertible {
    case tokyo
    case kanagawa
    case chiba
    case saitama
    case unselected
    
    var description: String {
        switch self {
        case .tokyo: return "東京"
        case .kanagawa: return "神奈川"
        case .chiba: return "千葉"
        case .saitama: return "埼玉"
        case .unselected: return "選択してください"
        }
    }
}
