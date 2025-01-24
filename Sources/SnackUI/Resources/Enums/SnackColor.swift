import SwiftUI

@frozen
public enum SnackColor {
    case red
    case green
    case blue
    case yellow
    case purple
    case orange
    case black
    case white
    case brown
    case pink
    case gray
    case lightGray
    case lime
    case indigo
    case coral
    case navy
    
    var value: Color {
        switch self {
        case .red:
            Color(hex: "#D84040") ?? .black
        case .green:
            Color(hex: "#77B254") ?? .black
        case .blue:
            Color(hex: "#98D8EF") ?? .black
        case .yellow:
            Color(hex: "#FFEB00") ?? .black
        case .purple:
            Color(hex: "#8B5DFF") ?? .black
        case .orange:
            Color(hex: "#FF9D23") ?? .black
        case .black:
            Color.black
        case .white:
            Color.white
        case .brown:
            Color(hex: "#754E1A") ?? .black
        case .pink:
            Color(hex: "#F05A7E") ?? .black
        case .gray:
            Color.secondary
        case .lightGray:
            Color(hex: "#EEEEEE") ?? .black
        case .lime:
            Color(hex: "#5CB338") ?? .black
        case .indigo:
            Color(hex: "#7E1891") ?? .black
        case .coral:
            Color(hex: "#F87A53") ?? .black
        case .navy:
            Color(hex: "#001A6E") ?? .black
        }
    }
}
