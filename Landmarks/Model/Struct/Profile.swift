// MARK: LIBRARIES
import Foundation



struct Profile {
    
    // MARK: - STATIC PROPERTIES
    static let `default` = Profile(username: "D_Gale")
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = Season.winter
    var goalDate = Date.init()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}
