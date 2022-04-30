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
    var coordinate: CLLocationCoordinate2D
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    /// Updates the region based on a coordinate value:
    private func setRegion(_ coordinate: CLLocationCoordinate2D)
    -> Void {
        
        region = MKCoordinateRegion(center: coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 0.2,
                                                           longitudeDelta: 0.2))
    }
    
    
    
    // MARK: - HELPER METHODS
}






// PREVIEWS ///////////////////////////////
struct MapView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        MapView(coordinate: CLLocationCoordinate2D.init(latitude: 34.011_286,
                                                        longitude: -116.166_868))
    }
}
