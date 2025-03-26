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
            VStack{
                
                NavigationLink(destination: {IMCView()}
                ){
                    Text("Ir a IMC View")
                }
                
                Text("IMC Calculator")
                Text("App 2")
                Text("App 2")
                Text("App 2")
            }
        }
    }
}

#Preview {
    MenuView()
}
