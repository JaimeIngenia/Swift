//
//  ApiNetwork.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 1/04/25.
//

import Foundation

struct Wrapper:Codable{
    let respose:String
    let results:[Superhero]
}

struct Superhero:Codable{
    let id:String
    let name:String
}

class ApiNetwork {
    func getHerosByQuery(query:String) async throws -> Wrapper{
        let url = URL(string:"https://superheroapi.com/api/fb084b4e5c00f4b9c11a247f6f1b507e/search/\(query)")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        
        return wrapper
    }
}
