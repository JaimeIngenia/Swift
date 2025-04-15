//Ho
//  Created by Luis Espana on 9/04/25.
//

import Foundation
import MapKit

struct  Place:Identifiable, Codable{
    let id = UUID()
    var name: String
    var coordinates: CLLocationCoordinate2D
    var fav:Bool
    
    enum CodingKeys: CodingKey {
        case id, name, coordinates, fav, latitude, longitude
    }
    
    init(id: UUID, name: String, coordinates: CLLocationCoordinate2D, fav: Bool) {
        self.id = id
        self.name = name
        self.coordinates = coordinates
        self.fav = fav
    }
    
    init(from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let latitude = try container.decode(CLLocationDegrees.self, forKey: .latitude)
        let longitude = try container.decode(CLLocationDegrees.self, forKey: .longitude)
        coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        name = try container.decode(String.self, forKey: .name)
        fav = try container.decode(Bool.self, forKey: .fav)
        id = try container.decode(UUID.self, forKey: .id)
    }
}
