import SwiftUI

/// Renders a circle with a specific color. You can add any view on SnackCircle
public struct SnackCircle<Content> : View where Content : View {
    var color: SnackColor
    var content: Content
    
    init(
        _ color: SnackColor = .lightGray,
        @ViewBuilder content: () -> Content
    ) {
        self.color = color
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(Color(color.value))
            
            content
        }
    }
}
