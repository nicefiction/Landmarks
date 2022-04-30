// MARK: - LIBRARIES
import SwiftUI



struct LandmarkRow: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    let landmark: Landmark
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .scaledToFit()
                .frame(width: 50.0, height: 50.0)
            Text("\(landmark.name)")
            Spacer()
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS ///////////////////////////////////
struct LandmarkRow_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        LandmarkRow(landmark: landmarks[0])
    }
}
