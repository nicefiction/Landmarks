// MARK: LIBRARIES
import Foundation
import SwiftUI



extension Animation {
    
    static func ripple(index: Int)
    -> Animation {
        
        Animation.spring(dampingFraction: 0.75)
        /// Speed up the animation a bit,
        /// to shorten the time each bar takes to move to its new position.
            .speed(2)
        /// Add a delay to each animation that’s
        /// based on the capsule’s position on the graph.
            .delay(0.03 * Double(index))
    }
}
