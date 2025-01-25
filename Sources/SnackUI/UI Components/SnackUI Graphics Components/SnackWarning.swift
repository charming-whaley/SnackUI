import SwiftUI

public struct SnackWarning : View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    public var body: some View {
        HStack(spacing: 10) {
            Group {
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text(title)
                    .font(.headline)
                    .lineLimit(1)
            }
            .foregroundStyle(Color(SnackColor.orange.value))
            .shadow(color: Color(SnackColor.orange.value), radius: 0.7)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .stroke(Color(SnackColor.orange.value), lineWidth: 1)
                .shadow(color: Color(SnackColor.orange.value), radius: 3)
        }
    }
}
