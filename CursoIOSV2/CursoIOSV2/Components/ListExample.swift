//
//  ListExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 31/03/25.
//

import SwiftUI

var pokemos = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charizard"),
    Pokemon(name: "Squirtle"),
]

var digimons = [
    Digimon(name: "Agumon"),
    Digimon(name: "Agumon1"),
    Digimon(name: "Agumon2"),
    Digimon(name: "Agumon3"),
    Digimon(name: "Agumon3")
]

struct ListExample: View {
    var body: some View {
        /*
         List{
            ForEach(pokemos, id:\.name) {
                pokemon in
                Text(pokemon.name)
            }
        }
        
        List(digimons){
            digimon in
            Text(digimon.name)
        }
         */
        List
        {
            Section(header: Text("Pokemons")){
                ForEach(pokemos, id:\.name){ pokemon in
                    Text(pokemon.name)
                }
            }
            
            Section(header: Text("Digimons")){
                ForEach(digimons){ digimon in
                    Text(digimon.name)
                }
            }
        }
        .listStyle(.automatic)
    }
}

struct Pokemon{
    let name: String
}

struct Digimon:Identifiable{
    var id = UUID()
    let name: String
}

#Preview {
    ListExample()
}
