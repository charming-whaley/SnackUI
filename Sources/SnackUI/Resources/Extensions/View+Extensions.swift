import SwiftUI

extension View {
    @ViewBuilder
    public func horizontalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    public func verticalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    public func setButtonSize(_ size: ButtonSize) -> some View {
        switch size {
        case .small:
            self
        case .regular:
            self
        case .middle:
            self
        case .large:
            self
        case .wide:
            self
        }
    }
}
