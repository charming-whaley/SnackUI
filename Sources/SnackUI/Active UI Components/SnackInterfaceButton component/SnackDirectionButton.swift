import SwiftUI

public struct SnackDirectionButton: View {
    var color: SnackColor
    var direction: SnackDirections
    var action: () -> Void
    
    init(OfColor color: SnackColor = .gray, AnddirectedIn direction: SnackDirections, action: @escaping () -> Void) {
        self.color = color
        self.direction = direction
        self.action = action
    }
    
    var directed: String {
        switch direction {
        case .left:
            return "arrowshape.left.fill"
        case .right:
            return "arrowshape.right.fill"
        case .up:
            return "arrowshape.up.fill"
        case .down:
            return "arrowshape.down.fill"
        }
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: directed)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .foregroundStyle(Color(color.value))
                .padding(8)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.clear)
                        .stroke(Color(color.value), lineWidth: 1)
                }
        }
    }
}
