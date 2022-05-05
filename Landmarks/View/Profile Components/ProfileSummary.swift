// MARK: LIBRARIES
import SwiftUI



struct ProfileSummary: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @EnvironmentObject var modelData: ModelData
    
    
    
    // MARK: - PROPERTIES
    var profile: Profile
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        VStack(alignment: .leading,
               spacing: 10.00) {
            Text(profile.username)
                .font(.title)
                .bold()
            Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
            Text("Seasonal photos: \(profile.seasonalPhoto.rawValue)")
            Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            Divider()
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                .bold()
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90.00))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.50)
                            .hueRotation(Angle(degrees: 45.00))
                    }
                    .padding(.bottom)
                }
            }
            Divider()
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                HikeView(hike: modelData.hikes[0])
            }
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS

}






// PREVIEWS /////////////////
struct ProfileSummary_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData.init())
    }
}
