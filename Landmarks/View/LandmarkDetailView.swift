// MARK: - LIBRARIES
import SwiftUI



struct LandmarkDetailView: View {
    
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
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isFavorited: $modelData.landmarks[findLandmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(Text(landmark.name))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS //////////////////////////////////////
struct LandmarkDetail_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    static let modelData = ModelData.init()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        LandmarkDetailView(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
