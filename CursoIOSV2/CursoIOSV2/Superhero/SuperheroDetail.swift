//
//  SuperheroDetail.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 6/04/25.
//

import SwiftUI

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

#Preview {
    SuperheroDetail(id: "1")
}
