// MARK: LIBRARIES
import SwiftUI



struct LandmarkDetail: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @EnvironmentObject var modelData: ModelData
    
    
    
    // MARK: - PROPERTIES
    let landmark: Landmark
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var findLandmarkIndex: Int {
        
        return modelData.landmarks.firstIndex(where: {
            landmark.id == $0.id
        })!
    }
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
                Text(landmark.name)
                Toggle(isOn: $modelData.landmarks[findLandmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                Divider()
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                Text(landmark.state)
                    .font(.caption)
                Divider()
                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("Landmarks")
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}



// PREVIEWS //////////////////////////////////////
struct LandmarkDetail_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // static let modelData = ModelData.init()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        let modelData = ModelData.init()
        
        return Group {
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 5 - 40mm")
            LandmarkDetail(landmark: modelData.landmarks[1])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 7 - 45mm")
        }
    }
}
