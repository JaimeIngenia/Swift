//
//  MapExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 7/04/25.
//

import SwiftUI
import MapKit

struct MapExample: View {
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
            center: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    )
    
    var body: some View {
        
        ZStack{
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic, showsTraffic: true))
            VStack{
                Spacer()
                HStack{
                    Button("Ir al sur"){
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
                                center: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943),
                                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                            )
                        )
                    }
                    .padding(32)
                    .background(.white)
                    .padding()
                    
                    Button("Ir al norte"){
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
                                center: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943),
                                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                            )
                        )
                    }
                    .padding(32)
                    .background(.white)
                    .padding()
                }
            }
        }
        
    }
}

#Preview {
    MapExample()
}
