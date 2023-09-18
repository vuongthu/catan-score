import SwiftUI

enum Theme: String {
    case blue
    case brown
    case green
    case orange
    case purple
    case red
    case yellow
    
    var mainColor: Color {
        Color(rawValue)
    }
}
