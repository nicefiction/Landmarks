// MARK: SOURCE
/// https://developer.apple.com/tutorials/swiftui/composing-complex-interfaces



// MARK: - LIBRARIES
import SwiftUI



struct CategoryHomeView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @EnvironmentObject var modelData: ModelData
    @State private var isShowingProfile: Bool = false
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        NavigationView {
            List {
                modelData.featuredLandmarks[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(),
                        id: \.self) { (eachKey: String) in
                    CategoryRow(categoryName: eachKey,
                                categorisedLandmarks: modelData.categories[eachKey]!)
                    
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    isShowingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                        .font(.title2)
                        .accentColor(.primary)
                }
            }
            .sheet(isPresented: $isShowingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}



    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS






// PREVIEWS ////////////////////////////////////////
struct CategoryHomeView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        CategoryHomeView()
            .environmentObject(ModelData.init())
    }
}
