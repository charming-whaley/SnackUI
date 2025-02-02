import SwiftUI

public struct SnackStarButton: View {
    var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .foregroundStyle(Color(SnackColor.yellow.value))
                .padding(8)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.clear)
                        .stroke(Color(SnackColor.yellow.value), lineWidth: 1)
                }
        }
    }
}
