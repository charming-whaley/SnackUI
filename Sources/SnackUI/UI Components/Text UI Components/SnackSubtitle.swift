import SwiftUI

public struct SnackSubtitle : View {
    let content: String
    
    init (_ content: String) {
        self.content = content
    }
    
    public var body: some View {
        Text(NSLocalizedString(content, comment: ""))
            .font(.system(size: 30, weight: .semibold))
    }
}
