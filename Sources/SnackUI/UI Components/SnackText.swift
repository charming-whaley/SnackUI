import SwiftUI

public struct SnackText : View {
    var content: String
    
    init(content: String = "Hello, SnackUI!") {
        self.content = content
    }
    
    public var body: some View {
        Text(NSLocalizedString(content, comment: ""))
    }
}
