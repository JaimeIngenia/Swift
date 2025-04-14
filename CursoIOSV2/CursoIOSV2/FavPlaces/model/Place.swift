//Ho
//  Created by Luis Espana on 9/04/25.
//

import Foundation
import MapKit

struct  Place:Identifiable{
    let id = UUID()
    var name: String
    var coordinates: CLLocationCoordinate2D
    var fav:Bool
}
