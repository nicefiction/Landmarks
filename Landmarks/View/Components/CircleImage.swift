// MARK: - LIBRARIES
import SwiftUI



struct CircleImage: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var image: Image
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        image
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4.0)
            }
            .shadow(radius: 7)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ///////////////////////////////////
struct CircleImage_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        CircleImage(image: Image("turtlerock"))
    }
}
