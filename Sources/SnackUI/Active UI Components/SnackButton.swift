import SwiftUI

public struct SnackButton: View {
    var title: String
    var tintColor: SnackColor
    var radius: CGFloat
    var size: ButtonSize
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        title: String,
        tintColor: SnackColor,
        radius: CGFloat,
        size: ButtonSize,
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
                .clipShape(.rect(cornerRadius: radius))
                .computeButtonSize(size, tintColor)
        }
    }
}

extension SnackButton {
    init(
        title: String,
        tintColor: SnackColor,
        radius: CGFloat,
        size: ButtonSize,
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
