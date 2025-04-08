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
            MapReader{ proxy in
                
                
                Map(position: $position){
/*                    Marker("Pollito frito" , coordinate: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943))
 */
                    Annotation("Pollito Frito", coordinate: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943)){
                        Circle().frame(height: 100)
                    }.annotationTitles(.visible)
                }
                .mapStyle(.hybrid(elevation: .realistic, showsTraffic: true))
//                .onMapCameraChange { contex in
//                    print("Estamos en: \(contex.region)")
//                }
                .onMapCameraChange(frequency: .continuous) { contex in
                    print("Estamos en: \(contex.region)")
                }
                .onTapGesture { coord in
                    if let coordinates = proxy.convert(coord, from: .local){
                        withAnimation{
                            
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
                                    center: CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude),
                                    span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
                                )
                            )
    
                        }
                    }
                }
        }
            VStack{
                Spacer()
                HStack{
                    Button("Ir al sur"){
                        withAnimation{
                            
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
                                    center: CLLocationCoordinate2D(latitude: 1.2151865, longitude: -77.2750943),
                                    span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
                                )
                            )
    
                        }
                    }
                    .padding(32)
                    .background(.white)
                    .padding()
                    
                    Button("Ir al norte"){
                        withAnimation{
                            
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    // center: CLLocationCoordinate2D(latitude: -77.2750943, longitude: 1.2151865),
                                    center: CLLocationCoordinate2D(latitude: 1.207094, longitude: -77.2789765),
                                    span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
                                )
                            )
                        }
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
