//
//  TextExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 24/03/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.title)
            Text("Custom").font(.system(
                size: 40,
                weight: .bold
            ))
            Text("Custom").font(.system(
                size: 40,
                weight: .bold
            )).italic()
            Text("Custom").font(.system(
                size: 40,
                weight: .light
            )).underline().background(.blue)
            Text("aris aris aris aris aris")
                .frame(width: 50)
            Text("Jaime Jaime Jaime Jaime Jaime")
                .frame(width: 50)
                .lineLimit(3) 
        }
    }
}

#Preview {
    TextExample()
}
