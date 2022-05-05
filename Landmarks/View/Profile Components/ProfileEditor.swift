// MARK: LIBRARIES
import SwiftUI



struct ProfileEditor: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @Binding var profile: Profile
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var dateRange: ClosedRange<Date> {
        let minDate = Calendar.current.date(byAdding: .year,
                                            value: -1,
                                            to: profile.goalDate)!
        let maxDate = Calendar.current.date(byAdding: .year,
                                            value: 1,
                                            to: profile.goalDate)!
        return minDate...maxDate
    }
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Text("Username")
                    .bold()
                TextField("Username...", text: $profile.username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Divider()
            Toggle("Enable Notifications", isOn: $profile.prefersNotifications)
            Divider()
            Text("Seasonal Photo")
                .bold()
            Picker(selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases,
                        id: \.self) { (eachSeason: Profile.Season) in
                    Text(eachSeason.rawValue)
                }
            } label: {
                Text("Seasonal photo:")
            }
            .pickerStyle(SegmentedPickerStyle())
            Divider()
            DatePicker(selection: $profile.goalDate,
                       in: dateRange,
                       displayedComponents: .date) {
                Text("Goal Date")
                    .bold()
            }
        }
        .padding()
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}





// PREVIEWS /////////////////////////////////////
struct ProfileEditor_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ProfileEditor(profile: .constant(Profile.default))
    }
}
