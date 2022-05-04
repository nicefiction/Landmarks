// MARK: SOURCE
/// https://developer.apple.com/tutorials/swiftui/composing-complex-interfaces



// MARK: - LIBRARIES
import SwiftUI



struct CategoryHomeView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @EnvironmentObject var modelData: ModelData
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

    var body: some View {
        
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(),
                        id: \.self) { (eachKey: String) in
                    Text(eachKey)
                }
            }
            .navigationTitle("Featured")
        }
    }
}






// PREVIEWS ////////////////////////////////////////
struct CategoryHomeView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        CategoryHomeView()
            .environmentObject(ModelData.init())
    }
}
