import SwiftUI

public struct SnackButton : View {
    var title: String
    var tintColor: SnackColor
    var radius: CGFloat
    var size: ButtonSize
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        title: String = "Button",
        tintColor: SnackColor = .purple,
        radius: CGFloat = .zero,
        size: ButtonSize = .wide,
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
        title: String = "Button",
        tintColor: SnackColor = .purple,
        radius: CGFloat = .zero,
        size: ButtonSize = .wide,
        asyncAction: @escaping () async -> Void
    ) {
        self.title = title
        self.tintColor = tintColor
        self.radius = radius
        self.size = size
        self.action = {  }
        self.asyncAction = asyncAction
    }
}
