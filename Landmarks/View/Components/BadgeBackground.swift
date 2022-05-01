// MARK: - LIBRARIES
import SwiftUI



struct BadgeBackground: View {
    
    // MARK: - STATIC PROPERTIES
    static let gradientStart = Color(red: 239.0 / 255,
                                     green: 120.0 / 255,
                                     blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255,
                                   green: 172.0 / 255,
                                   blue: 120.0 / 255)
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        /// Wrap the path in a `GeometryReader`
        /// so the badge can use the size of its containing view,
        /// which defines the size instead of hard-coding the value (100).
        GeometryReader { (geometryProxy: GeometryProxy) in
            Path { path in
                /// Using the smallest of the geometry’s two dimensions
                /// preserves the aspect ratio of the badge
                /// when its containing view isn’t square.
                var width: CGFloat = min(geometryProxy.size.width,
                                         geometryProxy.size.height)
                let height = width
                /// Scale the shape on the x-axis using `xScale`,...
                let xScale: CGFloat = 0.832
                /// ...and then add `xOffset`
                /// to recenter the shape within its geometry:
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                
                path.move(
                    to: CGPoint.init(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                HexagonParameters.segments.forEach { (eachSegment: HexagonParameters.Segment) in
                    path.addLine(
                        to: CGPoint(
                            x: width * eachSegment.line.x + xOffset,
                            y: height * eachSegment.line.y
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * eachSegment.curve.x + xOffset,
                            y: height * eachSegment.curve.y
                        ), control: CGPoint(
                            x: width * eachSegment.control.x + xOffset,
                            y: height * eachSegment.control.y
                        )
                    )
                }
            }
            .fill(
                .linearGradient(
                    Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: UnitPoint.init(x: 0.50, y: 0.00),
                    endPoint: UnitPoint.init(x: 0.50, y: 0.60)
                )
            )
        }
        .aspectRatio(1, contentMode: .fit)
        /// By preserving a 1:1 aspect ratio,
        /// the badge maintains its position at the center of the view,
        /// even if its ancestor views aren’t square.
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ///////////////////////////////////////
struct BadgeBackground_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        BadgeBackground()
    }
}
