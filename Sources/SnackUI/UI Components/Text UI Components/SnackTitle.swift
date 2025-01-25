import SwiftUI

/// Creates a title for a view
public struct SnackTitle : View {
    let content: String
    
    init(_ content: String) {
        self.content = content
    }
    
    public var body: some View {
        Text(NSLocalizedString(content, comment: ""))
            .font(.system(size: 40, weight: .black))
    }
}
