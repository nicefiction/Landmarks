// MARK: LIBRARIES
import SwiftUI



struct HikeView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var showDetail = true
    
    
    
    // MARK: - PROPERTIES
    var hike: Hike
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button {
//                    withAnimation(
//                        .easeIn(duration: 2.00)
//                    ) {
//                        showDetail.toggle()
//                    }
                    withAnimation {
                        showDetail.toggle()
                    }
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
//                        .animation(nil,
//                                   value: showDetail)
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
//                        .animation(
//                            .easeIn(duration: 2.00),
//                            value: showDetail
//                        )
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS


}






// PREVIEWS ////////////////////////////////
struct HikeView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        VStack {
            HikeView(hike: ModelData().hikes[0])
                .padding()
            Spacer()
        }
    }
}
