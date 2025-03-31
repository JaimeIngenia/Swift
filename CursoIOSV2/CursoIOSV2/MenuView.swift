//
//  MenuView.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 25/03/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            // A partir de aqui se va a navegar
            List{
                
                NavigationLink(destination: {IMCView()}
                ){
                    Text("Ir a IMC View")
                }
                NavigationLink(destination:SuperheroSearcher()){
                    Text("Super Hero Finder")
                }
                
                Text("App")
                Text("App")
                Text("App")
                Text("App")
            }
        }
    }
}

#Preview {
    MenuView()
}
