// MARK: LIBRARIES
import Foundation
import SwiftUI



extension AnyTransition {
    
    static var moveAndFade: AnyTransition {
        .asymmetric(
            /// Switch to using the `move(edge:)` transition,
            /// so that the graph slides in and out from the same side.
            insertion: .move(edge: .trailing).combined(with: .opacity),
            /// Use the `asymmetric(insertion:removal:)` modifier
            /// to provide different transitions
            /// for when the view appears and disappears.
            removal: .scale.combined(with: .opacity)
        )
    }
}
