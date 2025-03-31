//
//  SuperheroSearcher.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 31/03/25.
//

import SwiftUI

struct SuperheroSearcher: View {
    @State var superheroName: String = ""
    var body: some View {
        
        VStack{
            TextField("", text: $superheroName, prompt: Text("Superman...").foregroundColor(.gray).font(.title2).bold())
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding(16)
                .border(.purple,width: 1.5)
                .padding(8)
                .autocorrectionDisabled()
                .onSubmit {
                    print(superheroName)
                }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        
    }
}

#Preview {
    SuperheroSearcher()
}
