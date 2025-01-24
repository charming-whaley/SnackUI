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
                .padding(.horizontal)
                .padding(.vertical)
        case .middle:
            self
        case .large:
            self
        case .wide:
            self
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
        }
    }
    
    @ViewBuilder
    public func setFigureSize(_ size: FigureSize) -> some View {
        switch size {
        case .little:
            self
        case .small:
            self
        case .regular:
            self
        case .middle:
            self
        case .big:
            self
        case .large:
            self
        }
    }
}
