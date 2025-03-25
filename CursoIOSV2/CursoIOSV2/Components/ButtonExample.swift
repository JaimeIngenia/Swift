//
//  ButtonExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 25/03/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Hola") {
            print("Jeje")
        }
        
        Button(action: {print("Click")},
               label: {
            Text(" Soy Un Boton ")
                .frame(width: 200 , height: 110)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(20)
        })
    }
}

struct Counter:View {
    @State var suscribes = 0
    var body: some View {
        Button(action: {suscribes += 1},
               label: {
            Text(" Sucriptores: \(suscribes)")
                .bold()
                .font(.title)
                .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    Counter()
}
