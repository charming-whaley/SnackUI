import SwiftUI

extension View {
    @ViewBuilder
    public func addHorizontalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    public func addVerticalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    public func adjustButtonSize(_ size: ButtonSize) -> some View {
        switch size {
        case .small:
            self
                .padding(.vertical, 12)
                .frame(width: UIScreen.main.bounds.width / 4)
        case .middle:
            self
                .padding(.vertical, 12)
                .frame(width: UIScreen.main.bounds.width / 2)
        case .large:
            self
                .padding(.vertical, 12)
                .frame(width: UIScreen.main.bounds.width - 50)
        case .wide:
            self
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
        }
    }
}
