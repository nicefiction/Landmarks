// MARK: LIBRARIES
import SwiftUI



struct CategoryRow: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var categoryName: String
    var categorisedLandmarks: Array<Landmark>
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.top, 5)
                .padding(.leading, 15)
            ScrollView(.horizontal,
                       showsIndicators: false) {
                HStack(alignment: .top,
                       spacing: 0.00) {
                    NavigationLink(destination: {}, // FIXME: Destination
                                   label: {
                        
                        ForEach(categorisedLandmarks) { (eachLandmark: Landmark) in
                            CategoryItem(landmark: eachLandmark)
                        }
                    })
                }
                .frame(height: 185)
            }
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS ///////////////////////////////////
struct CategoryRow_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    static let categorisedLandmarks = ModelData.init().landmarks
    static let categoryName: String = categorisedLandmarks[0].category.rawValue
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        CategoryRow(categoryName: categoryName,
                    categorisedLandmarks: categorisedLandmarks)
    }
}
