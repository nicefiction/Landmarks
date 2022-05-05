// MARK: LIBRARIES
import Foundation



extension Landmark {
    
    enum Category: String,
                   CaseIterable,
                   Codable {
        
        case lakes = "Lakes"
        case mountains = "Mountains"
        case rivers = "Rivers"
    }
}
