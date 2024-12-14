import SwiftUI

struct SnackLabeledButton: View {
    
    let label: String
    let color: Color
    var systemImage: String = ""
    let size: ButtonSize
    var radius: CGFloat = 0
    
    var action: () -> ()
    
    init(
        label: String,
        color: Color,
        systemImage: String,
        size: ButtonSize,
        radius: CGFloat,
        action: @escaping () -> Void
    ) {
        self.label = label
        self.color = color
        self.systemImage = systemImage
        self.size = size
        self.radius = radius
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Label(label, systemImage: systemImage)
                .font(.headline)
                .foregroundStyle(Color.white)
                .computeButtonSize(size)
                .labelStyle(CustomLabel())
        }
        .background {
            RoundedRectangle(cornerRadius: radius)
                .fill(color)
        }
    }
    
}
