//
//  LabelExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 25/03/25.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, image: "imagenSwift")
        
        Label("SUSCRIBETE", systemImage: "square.and.arrow.up")
        
        Label(
            title: {Text("SUSCRIBETE")},
            icon: {
                Image("imagenSwift")
                    .resizable()
                    .scaledToFit()
                    .frame(height:40)
            }
        )
        
        
    }
}

#Preview {
    LabelExample()
}
