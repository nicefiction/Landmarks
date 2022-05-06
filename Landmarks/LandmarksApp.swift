// MARK: - LIBRARIES
import SwiftUI

/// The Landmarks app is the sum of all its views, including navigation views.
/// The `App` conformer acts as the entry point for the Landmarks app,
///  but isn’t itself a view.
@main
struct LandmarksApp: App {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    /// Use the `@StateObject` attribute
    /// to initialize a model object for a given property only once during the life time of the app.
    /// This is true when you use the attribute in an app instance, as shown here,
    /// as well as when you use it in a view:
    @StateObject private var modelData = ModelData.init()
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some Scene {
        
        WindowGroup {
            /// root view:
            ContentView()
                .environmentObject(modelData)
            /// Puts the model object in the environment
            /// when you run the app in the simulator or on a device.
        }
        #if os(watchOS)
        /// When Apple Watch receives a notification,
        /// it looks for a scene in your app associated with the notification’s category:
        WKNotificationScene(controller: NotificationController.self,
                            category: "LandmarkNear")
        #endif
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
    
}






 // MARK: LIBRARIES
 
 // MARK: - STATIC PROPERTIES
 // MARK: - PROPERTY WRAPPERS
 // MARK: - PROPERTIES
 // MARK: - COMPUTED PROPERTIES
 // MARK: - STATIC METHODS
 // MARK: - INITIALIZERS
 // MARK: - METHODS
 // MARK: - HELPER METHODS

 // PREVIEWS /////////////////
 
 // MARK: - STATIC PROPERTIES
 // MARK: - COMPUTED PROPERTIES
