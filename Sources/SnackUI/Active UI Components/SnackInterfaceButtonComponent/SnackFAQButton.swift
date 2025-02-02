import SwiftUI

public struct SnackFAQButton: View {
    var color: SnackColor
    var action: () -> Void
    
    init(OfColor color: SnackColor = .gray, action: @escaping () -> Void) {
        self.color = color
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "questionmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .foregroundStyle(Color(color.value))
                .padding(8)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.clear)
                        .stroke(Color(color.value), lineWidth: 1)
                }
        }
    }
}
