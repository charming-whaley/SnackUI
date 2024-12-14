import SwiftUI

struct SwiftUIView: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    let systemImage: String
    let label: String
    let descriptionText: String
    var radius: CGFloat = 20
    
    var body: some View {
        HStack(spacing: 0.0) {
            Label(label, systemImage: systemImage)
                .symbolRenderingMode(.palette)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundStyle(Color.black.opacity(0.2))
            
            Spacer(minLength: 0)
            
            Text(descriptionText)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
        }
        .padding(.vertical, 20.0)
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: radius)
                .fill(colorScheme == .dark ? Color.black : Color.white)
                .frame(maxWidth: .infinity)
                .overlay {
                    RoundedRectangle(cornerRadius: radius)
                        .stroke(Color.black.opacity(0.2), lineWidth: 1.0)
                }
        }
    }
    
}
