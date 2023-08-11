//
//  RMGetAllCharactersResponce.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 13/07/2023.
//

import Foundation

struct RMGetAllCharactersResponce: Codable {
    struct Info: Codable {
        let count: Int
       let pages: Int
       let next: String
       let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
