import SwiftUI

extension View {
    
    public func horizontalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    public func verticalAlignment(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    func computeButtonSize(_ size: ButtonSize) -> some View {
        switch size {
        case .little:
            return self
                .padding(.vertical, 6.0)
                .padding(.horizontal, 8.0)
        case .small:
            return self
                .padding(.vertical, 10.0)
                .padding(.horizontal, 12.0)
        case .regular:
            return self
                .padding(.vertical)
                .padding(.horizontal)
        case .medium:
            return self
                .padding(.vertical, 20.0)
                .padding(.horizontal, 22.0)
        case .large:
            return self
                .padding(.vertical, 22.0)
                .padding(.horizontal, 24.0)
        case .extraLarge:
            return self
                .padding(.vertical, 24.0)
                .padding(.horizontal, 26.0)
        case .wide:
            return self
                .padding(.vertical, 18.0)
                .padding(.horizontal, 100.0)
        case .extraWide:
            return self
                .padding(.vertical, 18.0)
                .padding(.horizontal, 120.0)
        case .ultraWide:
            return self
                .padding(.vertical, 18.0)
                .padding(.horizontal, 130.0)
        }
    }
    
}
