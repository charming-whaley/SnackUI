import SwiftUI

public struct SnackFailure : View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    public var body: some View {
        HStack(spacing: 10) {
            Group {
                Image(systemName: "exclamationmark.octagon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text(title)
                    .font(.headline)
                    .lineLimit(1)
            }
            .foregroundStyle(Color(SnackColor.red.value))
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .stroke(Color(SnackColor.red.value), lineWidth: 1)
                .shadow(color: Color(SnackColor.red.value), radius: 3)
        }
    }
}

#Preview {
    SnackFailure("You are not allowed to do this now!")
}
