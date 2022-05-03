// MARK: - LIBRARIES
import Foundation



extension Hike {
    
    struct Observation: Codable,
                        Hashable {
        
        // MARK: - STATIC PROPERTIES
        // MARK: - PROPERTY WRAPPERS
        // MARK: - PROPERTIES
        let elevation: Range<Double>
        let pace: Range<Double>
        let heartRate: Range<Double>
        let distanceFromStart: Double
        
        
        
        // MARK: - COMPUTED PROPERTIES
        // MARK: - STATIC METHODS
        // MARK: - INITIALIZERS
        // MARK: - METHODS
        // MARK: - HELPER METHODS
    }
}
