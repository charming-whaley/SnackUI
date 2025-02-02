import SwiftUI

public struct SnackCancelButton: View {
    var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .foregroundStyle(Color(SnackColor.red.value))
                .padding(8)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.clear)
                        .stroke(Color(SnackColor.red.value), lineWidth: 1)
                }
        }
    }
}

#Preview {
    SnackCancelButton {
        
    }
}
