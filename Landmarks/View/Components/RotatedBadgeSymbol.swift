// MARK: - LIBRARIES
import SwiftUI



struct RotatedBadgeSymbol: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    let angle: Angle
    
    
    
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

    var body: some View {
        
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: UnitPoint.bottom)
    }
}






// PREVIEWS /////////////////
struct RotatedBadgeSymbol_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        RotatedBadgeSymbol(angle: Angle(degrees: 5.00))
    }
}
