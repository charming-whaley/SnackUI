import SwiftUI

struct SnackLabeledNavigationButton<Content>: View where Content: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    let label: String
    let direction: GoButtonDirection
    let size: ButtonSize
    let content: () -> Content
    
    init(
        label: String,
        direction: GoButtonDirection,
        size: ButtonSize,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.label = label
        self.direction = direction
        self.size = size
        self.content = content
    }
    
    var body: some View {
        NavigationLink {
            content()
        } label: {
            Label(label, systemImage: direction == .left ? "arrow.left" : "arrow.right")
                .font(.headline)
                .foregroundStyle(Color.black.opacity(0.2))
                .computeButtonSize(size)
                .background {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(colorScheme == .dark ? Color.black : Color.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.black.opacity(0.2), lineWidth: 1.3)
                        }
                }
                .labelStyle(CustomLabel())
        }
    }
    
}
