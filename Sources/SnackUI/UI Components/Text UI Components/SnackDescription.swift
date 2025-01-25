import SwiftUI

/// Creates description text
public struct SnackDescription : View {
    let content: String
    
    init(_ content: String) {
        self.content = content
    }
    
    public var body: some View {
        Text(NSLocalizedString(content, comment: ""))
            .font(.system(size: 14, weight: .medium))
            .foregroundStyle(Color(SnackColor.gray.value))
    }
}
