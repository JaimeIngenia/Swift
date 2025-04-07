//
//  SuperheroDetail.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 6/04/25.
//

import SwiftUI
import SDWebImageSwiftUI
import Charts

struct SuperheroDetail: View {
    
    let id:String
    @State var superhero:ApiNetwork.SuperheroCompleted? = nil
    @State var loading:Bool = true
    
    var body: some View {
        VStack{
            
            if loading{
                ProgressView().tint(.white)
            } else if let superhero = superhero{ // Si no es nil pintar todo esto
                // superhero?.image
                // superhero?.name
                // etc ...
                WebImage(url: URL(string: superhero.image.url))
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .clipped()
                
                Text(superhero.name).bold().font(.title).foregroundColor(.white)
                
                ForEach(superhero.biography.aliases, id: \.self){ alias in
                    Text(alias)
                        .foregroundColor(.gray)
                        .italic()
                }
                SuperheroStats(stats: superhero.powerstats)
                Spacer()
                
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
            .onAppear {
                Task{
                    do{
                        superhero = try await ApiNetwork().getHeroById(id: id)
                    }
                    catch{
                        superhero = nil
                        print("Error con el id")
                    }
                    loading = false
                }
            }
    }
}

struct SuperheroStats:View {
    let stats:ApiNetwork.Powerstats
    var body: some View {
        VStack{
            Chart{
                SectorMark(angle: .value("Count",
                                         Int(stats.combat) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Combat"))
                
                SectorMark(angle: .value("Count",
                                         Int(stats.intelligence) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Intelligence"))
                
                SectorMark(angle: .value("Count",
                                         Int(stats.durability) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Durability"))
                
                SectorMark(angle: .value("Count",
                                         Int(stats.power) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Power"))
                
                SectorMark(angle: .value("Count",
                                         Int(stats.speed) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Speed"))
                
                SectorMark(angle: .value("Count",
                                         Int(stats.strength) ?? 0),
                           innerRadius: .ratio(0.5),
                           angularInset: 10
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category","Strength"))
                
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: 350)
        .background(.white)
        .cornerRadius(20)
        .padding(32)
    }
}

#Preview {
    SuperheroDetail(id: "1")
}
