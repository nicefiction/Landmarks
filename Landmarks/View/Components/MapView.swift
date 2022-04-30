// MARK: - LIBRARIES
import MapKit
import SwiftUI



struct MapView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var region = MKCoordinateRegion.init(center: CLLocationCoordinate2D.init(latitude: 34.011_286,
                                                                                            longitude: -116.166_868),
                                                        span: MKCoordinateSpan.init(latitudeDelta: 0.2,
                                                                                    longitudeDelta: 0.2))
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        Map(coordinateRegion: $region)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






struct MapView_Previews: PreviewProvider {
    // PREVIEWS /////////////////
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        MapView()
    }
}
