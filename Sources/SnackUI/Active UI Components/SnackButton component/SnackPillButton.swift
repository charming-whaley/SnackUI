import SwiftUI

public struct SnackPillButton: View {
    var title: String
    var color: SnackColor
    var size: ButtonSize
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        withTitle title: String,
        ofColor color: SnackColor,
        AndSize size: ButtonSize,
        action: @escaping () -> Void,
        asyncAction: (() async -> Void)? = nil
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.action = action
    }
    
    public var body: some View {
        Button {
            Task { @MainActor in
                if let asyncAction {
                    await asyncAction()
                } else {
                    action()
                }
            }
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

extension SnackPillButton {
    init(
        withTitle title: String,
        ofColor color: SnackColor,
        AndSize size: ButtonSize,
        asyncAction: @escaping () async -> Void
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.action = {  }
        self.asyncAction = asyncAction
    }
}

#Preview {
    SnackPillButton(withTitle: "Proceed", ofColor: .purple, AndSize: .large) {
        
    }
}
