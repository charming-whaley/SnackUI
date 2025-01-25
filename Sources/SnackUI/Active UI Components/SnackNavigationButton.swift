import SwiftUI

/// Designed in a modern way, SnackNavigationButton provides functionality to go through views in your app. NavigationStack view is obligatory
/// - title: text inside SnackButton
/// - tintColor: background color of SnackButton
/// - size: you can specify size of SnackButton with this property
/// - action: what SnackButton does
/// - asyncAction: what SnackButton does but in an asynchronous way
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
