import SwiftUI

struct SnackButton: View {
    
    let label: String
    let color: Color
    let size: ButtonSize
    var radius: CGFloat = 0
    
    var action: () -> ()
    
    init(
        label: String,
        color: Color,
        size: ButtonSize,
        radius: CGFloat,
        action: @escaping () -> Void
    ) {
        self.label = label
        self.color = color
        self.size = size
        self.radius = radius
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .font(.headline)
                .foregroundStyle(Color.white)
                .computeButtonSize(size)
        }
        .background {
            RoundedRectangle(cornerRadius: radius)
                .fill(color)
        }
    }
    
}
