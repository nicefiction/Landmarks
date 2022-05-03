// MARK: - LIBRARIES
import Foundation



struct Hike: Codable,
             Hashable,
             Identifiable {
    
    // MARK: - STATIC PROPERTIES
    /// An abstract class that declares an interface for objects
    /// that create, interpret, and validate the textual representation of values.
    static var lengthFormatter = LengthFormatter.init()
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    var observations: Array<Observation>
    
    /*
     Hike.formatter
                 .string(fromValue: distance, unit: .kilometer)
     */
    
    // MARK: - COMPUTED PROPERTIES
    var distanceText: String {
        return Hike.lengthFormatter.string(fromValue: distance,
                                           unit: .kilometer)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}
