import SwiftUI

struct SnackFAQAction: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        Image(systemName: "questionmark")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 16.0, height: 16.0)
            .background {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(colorScheme == .dark ? Color.black : Color.white)
                    .frame(width: 40.0, height: 40.0)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(Color.black.opacity(0.2), lineWidth: 1.3)
                    }
            }
            .foregroundStyle(Color.black.opacity(0.2))
    }
    
}
