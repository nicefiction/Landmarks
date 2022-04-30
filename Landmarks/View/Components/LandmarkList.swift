// MARK: - LIBRARIES
import SwiftUI



struct LandmarkList: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var body: some View {
        
        NavigationView {
            List(landmarks) { (eachLandmark: Landmark) in
                NavigationLink(destination: {
                    LandmarkDetailView()
                }, label: {
                    LandmarkRow.init(landmark: eachLandmark)
                })
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
    
    
    
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ////////////////////////////////////
struct LandmarkList_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        LandmarkList()
    }
}
