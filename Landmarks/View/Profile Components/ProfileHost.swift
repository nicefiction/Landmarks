// MARK: SOURCE
/// https://developer.apple.com/tutorials/swiftui/working-with-ui-controls

// MARK: - LIBRARIES
import SwiftUI



struct ProfileHost: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    /// SwiftUI provides storage in the environment for values you can access
    /// using the `@Environment` property wrapper.
    /// Access the `editMode` value to read or write the edit scope.
    @Environment(\.editMode) var editMode
    /// Adds an `Environment` view property
    /// that keys off of the environment’s `\.editMode`.
    
    /// To avoid updating the global app state before confirming any edits
    /// — such as while the user enters their name —
    /// the editing view operates on a copy of itself.
    @EnvironmentObject var modelData: ModelData
    /// Reads the user’s profile data from the environment
    /// to pass control of the data to the profile host.
    
    @State private var draftProfile: Profile = Profile.default
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack(alignment:.leading,
               spacing: 20.00) {
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ///////////////////////////////////
struct ProfileHost_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ProfileHost()
            .environmentObject(ModelData.init())
    }
}
