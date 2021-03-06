// MARK: - LIBRARIES
import Foundation



final class ModelData: ObservableObject {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @Published var landmarks: Array<Landmark> = load("landmarkData.json")
    @Published var profile = Profile.default
    
    
    
    // MARK: - PROPERTIES
    var hikes: Array<Hike> = load("hikeData.json")
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var categories: Dictionary<String, Array<Landmark>> {
        return Dictionary.init(grouping: landmarks,
                               by: { (eachLandmark: Landmark) in
            eachLandmark.category.rawValue
        })
    }
    
    
    var featuredLandmarks: Array<Landmark> {
        landmarks.filter { (eachLandmark: Landmark) in
            eachLandmark.isFeatured == true
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






/// Creates a `load(_:) `method that fetches JSON data with a given name from the app’s main bundle.
func load<T: Decodable>(_ filename: String)
-> T {
    
    let data: Data

    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { fatalError("Couldn't find \(filename) in main bundle.") }

    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
