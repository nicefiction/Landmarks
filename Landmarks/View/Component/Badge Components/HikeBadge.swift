// MARK: LIBRARIES
import SwiftUI



struct HikeBadge: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var name: String
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1/3)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel(Text("Badge for \(name)"))
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS /////////////////////////////////
struct HikeBadge_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        HikeBadge(name: "Preview Testing")
    }
}
