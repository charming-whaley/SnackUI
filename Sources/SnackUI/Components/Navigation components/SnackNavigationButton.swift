import SwiftUI

struct SnackNavigationButton<Content>: View where Content: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    let direction: GoButtonDirection
    let content: () -> Content
    
    init(direction: GoButtonDirection, @ViewBuilder content: @escaping () -> Content) {
        self.direction = direction
        self.content = content
    }
    
    var body: some View {
        NavigationLink {
            content()
        } label: {
            Image(systemName: direction == .left ? "arrow.left" : "arrow.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16.0, height: 16.0)
                .background {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(colorScheme == .dark ? Color.black : Color.white)
                        .frame(width: 40.0, height: 40.0)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.black.opacity(0.2), lineWidth: 1.3)
                        }
                }
                .foregroundStyle(Color.black.opacity(0.2))
        }
    }
    
}
