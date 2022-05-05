// MARK: - LIBRARIES
import SwiftUI



struct Badge: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var badgeSymbols: some View {
        
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: Angle(degrees: Double(index) / Double(8)) * 360.00
            )
        }
        .opacity(0.5)
    }
    
    
    var body: some View {
        
        ZStack {
            BadgeBackground()
            GeometryReader { (geometryProxy: GeometryProxy) in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometryProxy.size.width / 2.0,
                              y: (3.0 / 4.0) * geometryProxy.size.height)
            }
            .scaledToFit()
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS /////////////////
struct Badge_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        Badge()
    }
}
