import SwiftUI

public struct SnackButton: View {
    let title: String
    let color: SnackColor
    let size: ButtonSize
    let cornerRadius: CGFloat
    let completion: () -> Void
    let asynchronousCompletion: (() async -> Void)?
    
    init(
        title: String,
        color: SnackColor,
        size: ButtonSize,
        cornerRadius: CGFloat = 0,
        completion: @escaping () -> Void
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.cornerRadius = cornerRadius
        self.completion = completion
        self.asynchronousCompletion = nil
    }
    
    public var body: some View {
        Button {
            if let asynchronousCompletion = asynchronousCompletion {
                Task { @MainActor in
                    await asynchronousCompletion()
                }
            } else {
                completion()
            }
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .background(color.value, in: .rect(cornerRadius: cornerRadius))
                .setButtonSize(size)
        }
    }
}

extension SnackButton {
    init(
        title: String,
        color: SnackColor,
        size: ButtonSize,
        cornerRadius: CGFloat = 0,
        asynchronousCompletion: @escaping () async -> Void
    ) {
        self.title = title
        self.color = color
        self.size = size
        self.cornerRadius = cornerRadius
        self.completion = {  }
        self.asynchronousCompletion = asynchronousCompletion
    }
}
