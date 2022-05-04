// MARK: - LIBRARIES
import SwiftUI




struct ContentView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var selectedTab: Tab = .list
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

    var body: some View {
        
        TabView(selection: $selectedTab) {
            CategoryHomeView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}






// PREVIEWS ///////////////////////////////////
struct ContentView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ContentView()
            .environmentObject(ModelData.init())
        /// Adds the model object to the environment,
        /// which makes the object available to any subview.
    }
}
