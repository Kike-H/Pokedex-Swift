//
//  PokeAPI.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import Foundation
import Alamofire
import SwiftUI

protocol PokemonPrototocol {
    func fetchRadomPokemon(id: Int, completetion: @escaping(Result<Pokemon, Error>) -> ())
}

class PokemonService: PokemonPrototocol {
    
    static let shared = PokemonService()
    private let baseAPIUrl = "https://pokeapi.co/api/v2/pokemon/"
    
    private init(){}
    
//    MARK: - Implementation protocol
    func fetchRadomPokemon(id: Int, completetion: @escaping (Result<Pokemon, Error>) -> ()) {
        AF.request(baseAPIUrl+String(id))
            .responseDecodable(of: Pokemon.self) { response in
                guard let pokemon = response.value else {
                    if let error = response.error {
                        completetion(.failure(error))
                    }
                    return
                }
                completetion(.success(pokemon))
            }
    }
    
}
