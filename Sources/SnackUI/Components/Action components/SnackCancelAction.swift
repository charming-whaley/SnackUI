import SwiftUI

struct SnackCancelAction: View {
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16.0, height: 16.0)
                .background {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(colorScheme == .dark ? Color.black : Color.white)
                        .frame(width: 40.0, height: 40.0)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.red, lineWidth: 1.3)
                        }
                }
                .foregroundStyle(Color.red)
        }
    }
    
}
