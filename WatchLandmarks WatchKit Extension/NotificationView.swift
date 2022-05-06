// MARK: LIBRARIES
import SwiftUI



struct NotificationView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var landmark: Landmark?
    var title: String?
    var message: String?
    let defaultMessage: String = "You are within 5 miles of one of your favorite landmarks."
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack {
            if let unwrappedLandmark = landmark {
                CircleImage(image: unwrappedLandmark.image.resizable())
                    .scaledToFit()
            }
            Text(title ?? "Unknown landmark")
                .font(.headline)
            Divider()
            Text(message ?? defaultMessage)
                .font(.caption)
        }
        .lineLimit(0)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS ////////////////////////////////////////
struct NotificationView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        let landmark = ModelData.init().landmarks[0]
        
        Group {
            NotificationView()
            NotificationView(landmark: landmark,
                             title: "Turtle Rock",
                             message: "You are within 5 miles of Turtle Rock")
        }
    }
}
