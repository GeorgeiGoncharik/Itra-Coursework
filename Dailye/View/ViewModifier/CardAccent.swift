import Foundation
import SwiftUI

struct CardAccent: ViewModifier {
    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
            content
                .foregroundColor(colorScheme == .light ? Color.textColor : Color.AccentColour)
    }
}
