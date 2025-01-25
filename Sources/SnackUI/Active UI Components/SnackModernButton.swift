import SwiftUI

public struct SnackModernButton : View {
    var title: String
    var tintColor: SnackColor
    var size: ButtonSize
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        _ title: String = "Button",
        _ tintColor: SnackColor = .purple,
        _ size: ButtonSize = .wide,
        _ action: @escaping () -> Void
    ) {
        self.title = title
        self.tintColor = tintColor
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
                .computeButtonSize(.wide, tintColor)
                .clipShape(.capsule)
                .padding(.horizontal)
        }
    }
}

extension SnackModernButton {
    init(
        _ title: String = "Button",
        _ tintColor: SnackColor = .purple,
        _ size: ButtonSize = .wide,
        _ asyncAction: @escaping () async -> Void
    ) {
        self.title = title
        self.tintColor = tintColor
        self.size = size
        self.action = {  }
        self.asyncAction = asyncAction
    }
}
