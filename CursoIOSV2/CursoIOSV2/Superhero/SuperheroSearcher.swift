//
//  SuperheroSearcher.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 31/03/25.
// Token fb084b4e5c00f4b9c11a247f6f1b507e
// Token name = https://superheroapi.com/api/access-token/search/name

import SwiftUI
import SDWebImageSwiftUI


struct SuperheroSearcher: View {
    @State var superheroName: String = ""
    @State var wrapper:ApiNetwork.Wrapper? = nil
    @State var loading: Bool = false
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
                    loading = true
                    print(superheroName)
                    Task{
                        do{
                            wrapper = try await ApiNetwork().getHerosByQuery(query: superheroName)
                            
                        }
                        catch{
                            print("Error")
                        }
                        loading = false
                    }
                    
                }
            
            if loading{
                ProgressView().tint(.white)
            }
            
            NavigationStack{
                List(wrapper?.results ?? []){
                    superhero in
                    ZStack{
                        // Text(superhero.name)
                        SuperheroItem(superhero: superhero)
                        NavigationLink(destination: SuperheroDetail(id: superhero.id) ) {
                            EmptyView()
                        }.opacity(0)
                    }.listRowBackground(Color.backgroundApp)
                    
                }.listStyle(.plain)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        
    }
}

struct SuperheroItem:View {
    let superhero:ApiNetwork.Superhero
    var body: some View {
        ZStack {
            //superhero.image.url
                    
            //Rectangle()
            
            // Nuevo componente de la librería
            WebImage(url: URL(string: superhero.image.url))
                .resizable()
                .indicator(.activity)
                .scaledToFill()
                .frame(height: 200)
            
            
            VStack{
                Spacer()
                Text(superhero.name).foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.5))
            }
        }
        .frame(height:200)
        .cornerRadius(32)
        
      
    }
}

#Preview {
    SuperheroSearcher()
    //SuperheroItem(superhero: ApiNetwork.Superhero(id:"",name:""))
}
