import SwiftUI

public struct SnackNavigationButton<Content> : View where Content : View {
    var title: String
    var tintColor: SnackColor
    var size: ButtonSize
    var destination: Content
    
    init(
        _ title: String = "Button",
        _ tintColor: SnackColor = .purple,
        _ size: ButtonSize = .wide,
        @ViewBuilder destination: () -> Content
    ) {
        self.title = title
        self.tintColor = tintColor
        self.size = size
        self.destination = destination()
    }
    
    public var body: some View {
        NavigationLink {
            destination
        } label: {
            Text(title)
                .foregroundStyle(Color(SnackColor.white.value))
                .font(.headline)
                .computeButtonSize(.wide, tintColor)
                .clipShape(.capsule)
                .padding(.horizontal)
        }
    }
}
