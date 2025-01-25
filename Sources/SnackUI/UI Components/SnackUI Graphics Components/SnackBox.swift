import SwiftUI

public struct SnackBox<Content>: View where Content : View {
    var color: SnackColor
    var cornerRadius: CGFloat
    var content: Content
    
    init(
        _ color: SnackColor,
        _ cornerRadius: CGFloat,
        @ViewBuilder content: () -> Content
    ) {
        self.color = color
        self.cornerRadius = cornerRadius
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(Color(color.value))
            
            content
        }
    }
}
