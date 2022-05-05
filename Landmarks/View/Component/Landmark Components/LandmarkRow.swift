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
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
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
        
        Group {
            LandmarkRow(landmark: ModelData.init().landmarks[0])
            LandmarkRow(landmark: ModelData.init().landmarks[1])
        }
        .previewLayout(.fixed(width: 300.0, height: 70.0))
        
    }
}
