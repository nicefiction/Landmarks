// MARK: - LIBRARIES
import SwiftUI



struct LandmarkList: View {
    
    // MARK: - STATIC PROPERTIES
    @EnvironmentObject var modelData: ModelData
    /// The `modelData` property gets its value automatically,
    /// as long as the `environmentObject(_:)` modifier has been applied to a parent.
    @State private var isShowingFavoritesOnly: Bool = true
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var filteredLandmarks: Array<Landmark> {
/// OLIVIER:
//        if isShowingFavoritesOnly {
//            return landmarks.filter { (eachLandmark: Landmark) in
//                eachLandmark.isFavorite
//            }
//        } else {
//            return landmarks.filter { (eachLandmark: Landmark) in
//                !eachLandmark.isFavorite
//            }
//        }
        modelData.landmarks.filter { landmark in
            (!isShowingFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $isShowingFavoritesOnly) {
                    Text("Show Favorites Only")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                ForEach(filteredLandmarks) { (eachLandmark: Landmark) in
                    NavigationLink(destination: {
                        LandmarkDetailView(landmark: eachLandmark)
                    }, label: {
                        LandmarkRow.init(landmark: eachLandmark)
                    })
                }
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
//        "iPhone 13 mini",
//        "iPhone SE (3rd generation)",
        "iPhone 13 Pro"
    ]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ForEach(devices, id: \.self) { (eachDevice: String) in
            
            LandmarkList()
                .previewDevice(PreviewDevice.init(rawValue: eachDevice))
                .environmentObject(ModelData.init())
        }
    }
}
