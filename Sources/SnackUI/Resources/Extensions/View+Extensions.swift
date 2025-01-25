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
    public func computeButtonSize(_ size: ButtonSize, _ color: SnackColor) -> some View {
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
                .frame(maxWidth: .infinity)
                .background(Color(color.value))
                .padding(.vertical, 20)
                .background(Color(color.value))
        }
    }
}
