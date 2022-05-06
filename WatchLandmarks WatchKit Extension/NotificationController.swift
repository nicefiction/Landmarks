// MARK: LIBRARIES
import WatchKit
import SwiftUI
import UserNotifications



class NotificationController: WKUserNotificationHostingController<NotificationView> {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var landmark: Landmark?
    var title: String?
    var message: String?
    /// You use this key to extract the landmark index from the notification:
    let landmarkIndexKey: String = "landmarkIndex"
    
    
    
    // MARK: - COMPUTED PROPERTIES
    override var body: NotificationView {
        
        return NotificationView(landmark: landmark,
                                title: title,
                                message: message)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    override func willActivate()
    -> Void {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    
    override func didDeactivate()
    -> Void {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    override func didReceive(_ notification: UNNotification)
    -> Void {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        /// This method updates the controller’s properties.
        /// After calling this method,
        /// the system invalidates the controller’s body property, which updates your navigation view.
        /// The system then displays the notification on Apple Watch.
        let modelData = ModelData.init()
        
        let notificationData = notification.request.content.userInfo as? [String: Any]
        
        let aps = notificationData?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]
        
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        
        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
    
    
    
    // MARK: - HELPER METHODS
}
