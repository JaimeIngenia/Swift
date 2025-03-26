//
//  IMCView.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 26/03/25.
//

import SwiftUI

struct IMCView: View {
    
  /*  init(){
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    */
    var body: some View {
        VStack{
            Text("Es verdad")
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(.backgroundApp)
      //      .navigationTitle("IMC Jaime")
            .toolbar{
                ToolbarItem(placement : .principal){
                    Text("IMC Calculator JAIME")
                        .bold()
                        .foregroundColor(.white)
                }
            }
    }
}

// Componente Toogle

struct ToggleButton: View {
    
    //Parametros
    
    let text:String
    let imageName:String
    let index:Int
    
    var body: some View {
        Button(action: {}){
            VStack
            {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 60, height: 60)
                Text(text)
                // Subiendo a GitHub
            }
        }
    }
    
    
}

#Preview {
    ToggleButton(text: "Jaime", imageName: "heart.fill", index:0)
}
