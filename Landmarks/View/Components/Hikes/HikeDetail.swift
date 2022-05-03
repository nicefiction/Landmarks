// MARK: LIBRARIES
import SwiftUI



struct HikeDetail: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State var dataToShow = \Hike.Observation.elevation
    
    
    
    // MARK: - PROPERTIES
    let hike: Hike
    var buttons = [
        ("Elevation", \Hike.Observation.elevation),
        ("Heart Rate", \Hike.Observation.heartRate),
        ("Pace", \Hike.Observation.pace)
    ]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        VStack {
            HikeGraph(hike: hike,
                      path: dataToShow)
                .frame(height: 200)
            
            HStack(spacing: 25) {
                ForEach(buttons,
                        id: \.0) { value in
                    Button {
                        dataToShow = value.1
                    } label: {
                        Text(value.0)
                            .font(.system(size: 15))
                            .foregroundColor(value.1 == dataToShow
                                             ? .gray
                                             : .accentColor)
                            .animation(nil)
                    }
                }
            }
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS



}






// PREVIEWS //////////////////////////////////
struct HikeDetail_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        HikeDetail(hike: ModelData().hikes[0])
    }
}
