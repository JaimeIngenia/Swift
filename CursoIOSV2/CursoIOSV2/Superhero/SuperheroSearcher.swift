//
//  SuperheroSearcher.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 31/03/25.
// Token fb084b4e5c00f4b9c11a247f6f1b507e
// Token name = https://superheroapi.com/api/access-token/search/name

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
                    Task{
                        do{
                            let response = try await ApiNetwork().getHerosByQuery(query: superheroName)
                            print(response)
                        }
                        catch{
                            print("Error")
                        }
                    }
                    
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
