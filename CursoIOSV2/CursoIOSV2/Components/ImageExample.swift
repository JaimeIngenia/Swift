//
//  ImageExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 25/03/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("imagenSwift")
            .resizable()
            .frame(width: 50, height: 50)
        Image(systemName: "square.and.arrow.up")
            .resizable()
            .frame(width: 50, height: 50)
    }
}

#Preview {
    ImageExample()
}
