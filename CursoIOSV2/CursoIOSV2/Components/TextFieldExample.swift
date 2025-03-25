//
//  TextFieldExample.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 25/03/25.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    var body: some View {
        TextField("Escribe tu email", text: $email)
            .keyboardType(.emailAddress)
            .padding(16)
            .background(.gray.opacity(0.2))
            .cornerRadius(16)
            .padding(.horizontal,32)
            .onChange(of: email) { oldValue, newValue in
                print("El antiguo valor es \(oldValue) y el nuevo valor es \(newValue)")
            }
        
    }
}

#Preview {
    TextFieldExample()
}
