// MARK: LIBRARIES
import Foundation



extension Profile {
    
    enum Season: String,
                 CaseIterable,
                 Identifiable {
        
        case spring = "🌸"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "❄️"
        
        
        
        // MARK: - COMPUTED PROPERTIES
        var id: String {
            return rawValue
        }
        
        
        
        // MARK: - STATIC METHODS
        // MARK: - METHODS
        // MARK: - HELPER METHODS
    }
}
