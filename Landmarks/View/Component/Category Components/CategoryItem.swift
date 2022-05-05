// MARK: LIBRARIES
import SwiftUI



struct CategoryItem: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var landmark: Landmark
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 155, height: 155)
                .cornerRadius(5.00)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS ////////////////////////////////////
struct CategoryItem_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    static let landmark: Landmark = ModelData.init().landmarks[0]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        CategoryItem(landmark: landmark)
    }
}
