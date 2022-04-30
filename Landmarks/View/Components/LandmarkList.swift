// MARK: - LIBRARIES
import SwiftUI



struct LandmarkList: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        NavigationView {
            List(landmarks) { (eachLandmark: Landmark) in
                NavigationLink(destination: {
                    LandmarkDetailView(landmark: eachLandmark)
                }, label: {
                    LandmarkRow.init(landmark: eachLandmark)
                })
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ////////////////////////////////////
struct LandmarkList_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    static let devices: Array<String> = [
        "iPhone 13 mini",
        "iPhone SE (3rd generation)",
        "iPhone 13 Pro"
    ]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ForEach(devices, id: \.self) { (eachDevice: String) in
            
            LandmarkList()
                .previewDevice(PreviewDevice.init(rawValue: eachDevice))
        }
    }
}
