import SwiftUI

public struct SnackNavigationPill<Content>: View where Content: View {
    var title: String
    var color: SnackColor
    var size: ButtonSize
    var destination: Content

    init(
        withTitle title: String,
        ofColor color: SnackColor,
        AndSize size: ButtonSize,
        @ViewBuilder destination: () -> Content
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.destination = destination()
    }
    
    public var body: some View {
        NavigationLink {
            destination
        } label: {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
        }
        .adjustButtonSize(size)
        .background(Color(color.value), in: .capsule)
    }
}
