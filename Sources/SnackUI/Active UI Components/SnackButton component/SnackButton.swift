import SwiftUI

public struct SnackButton: View {
    var title: String
    var color: SnackColor
    var size: ButtonSize
    var radius: CGFloat
    var action: () -> Void
    var asyncAction: (() async -> Void)?
    
    init(
        withTitle title: String,
        ofColor color: SnackColor,
        AndSize size: ButtonSize,
        WithRadiusOf radius: CGFloat,
        action: @escaping () -> Void,
        asyncAction: (() async -> Void)? = nil
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.radius = radius
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
        .background(Color(color.value), in: .rect(cornerRadius: radius))
    }
}

extension SnackButton {
    init(
        withTitle title: String,
        ofColor color: SnackColor,
        AndSize size: ButtonSize,
        WithRadiusOf radius: CGFloat,
        asyncAction: @escaping () async -> Void
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.radius = radius
        self.action = {  }
        self.asyncAction = asyncAction
    }
}
