// MARK: - LIBRARIES
import SwiftUI



struct GraphCapsule: View,
                     Equatable {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var index: Int
    var color: Color
    var height: CGFloat
    var range: Range<Double>
    var overallRange: Range<Double>
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var heightRatio: CGFloat {
        return max(CGFloat(magnitude(of: range) / magnitude(of: overallRange)), 0.15)
    }
    
    
    var offsetRatio: CGFloat {
        return CGFloat((range.lowerBound - overallRange.lowerBound) / magnitude(of: overallRange))
    }
    
    
    var body: some View {
        Capsule()
            .fill(color)
            .frame(height: height * heightRatio)
            .offset(x: 0,
                    y: height * -offsetRatio)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
    
}






// PREVIEWS ////////////////////////////////////
struct GraphCapsule_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        GraphCapsule(
            index: 0,
            color: .blue,
            height: 150,
            range: 10..<50,
            overallRange: 0..<100)
    }
}
