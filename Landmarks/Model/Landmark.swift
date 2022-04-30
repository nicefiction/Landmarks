// MARK: - LIBRARIES
import Foundation
import MapKit
import SwiftUI



struct Landmark: Codable,
                 Hashable,
                 Identifiable {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    /// You make the property `private`
    /// because users of the Landmarks structure care only about the image itself:
    private var imageName: String
    private var coordinates: Coordinates
    var isFeatured: Bool
    
    var category: String
    var city: String
    var isFavorite: Bool

    
    
    // MARK: - COMPUTED PROPERTIES
    var image: Image {
        return Image(imageName)
    }
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D.init(latitude: coordinates.latitude,
                                    longitude: coordinates.longitude)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






extension Landmark {
    
    struct Coordinates: Hashable,
                        Codable {
        
        var longitude: Double
        var latitude: Double
    }
}

/*
 "name": "Turtle Rock",
 "category": "Rivers",
 "city": "Twentynine Palms",
 "state": "California",
 "id": 1001,
 "isFeatured": true,
 "isFavorite": true,
 "park": "Joshua Tree National Park",
 "coordinates": {
     "longitude": -116.166868,
     "latitude": 34.011286
 },
 "description": "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.",
 "imageName": "turtlerock"
 */
