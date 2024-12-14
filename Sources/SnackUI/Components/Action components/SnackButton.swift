import SwiftUI

struct SnackButton: View {
    
    let label: String
    let color: Color
    let size: ButtonSize
    var radius: CGFloat = 0
    
    var action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .font(.headline)
                .foregroundStyle(Color.white)
                .computeButtonSize(size)
        }
        .background {
            RoundedRectangle(cornerRadius: radius)
                .fill(color)
        }
    }
    
}
