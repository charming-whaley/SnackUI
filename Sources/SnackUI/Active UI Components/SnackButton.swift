import SwiftUI

/// One of the most important components in SnackUI. SnackButton is more customizable than SnackModernButton
/// - title: text inside SnackButton
/// - tintColor: background color of SnackButton
/// - radius: how elliptic SnackButton is
/// - size: you can specify size of SnackButton with this property
/// - action: what SnackButton does
/// - asyncAction: what SnackButton does but in an asynchronous way
public struct SnackButton : View {
    var title: String
    var tintColor: SnackColor
    var radius: CGFloat
    var size: ButtonSize
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        _ title: String = "Button",
        _ tintColor: SnackColor = .purple,
        _ radius: CGFloat = .zero,
        _ size: ButtonSize = .wide,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.tintColor = tintColor
        self.radius = radius
        self.size = size
        self.action = action
        self.asyncAction = nil
    }
    
    public var body: some View {
        Button {
            if let asyncAction {
                Task { @MainActor in
                    await asyncAction()
                }
            } else {
                action()
            }
        } label: {
            Text(title)
                .foregroundStyle(Color(SnackColor.white.value))
                .font(.headline)
                .computeButtonSize(size, tintColor)
                .clipShape(.rect(cornerRadius: radius))
                .padding(.horizontal)
        }
    }
}

extension SnackButton {
    init(
        _ title: String = "Button",
        _ tintColor: SnackColor = .purple,
        _ radius: CGFloat = .zero,
        _ size: ButtonSize = .wide,
        _ asyncAction: @escaping () async -> Void
    ) {
        self.title = title
        self.tintColor = tintColor
        self.radius = radius
        self.size = size
        self.action = {  }
        self.asyncAction = asyncAction
    }
}
