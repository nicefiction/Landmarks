// MARK: - LIBRARIES
import SwiftUI



struct FavoriteButton: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @Binding var isFavorited: Bool
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        Button(action: {
            isFavorited.toggle()
        }, label: {
            Label("Favorite destination", image: "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isFavorited ? .yellow : .gray)
            Label("Toggle as Favorite", systemImage: isFavorited ? "star.fill" : "star")
                .font(.title2)
                .labelStyle(.iconOnly)
                .foregroundColor(isFavorited ? .yellow : .gray)
        })
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS //////////////////////////////////////
struct FavoriteButton_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        FavoriteButton(isFavorited: .constant(true))
    }
}
