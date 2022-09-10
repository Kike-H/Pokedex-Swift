//
//  Controller.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import Foundation

final class Controller: ObservableObject {
    
    @Published var pokemon: Pokemon? = nil
    
    public func getRadomPokemon() {
        PokemonService.shared.fetchRadomPokemon(id: 6) { result in
            switch result {
            case .success(let pokemon):
                self.pokemon = pokemon
                debugPrint(pokemon.forms[0].name.uppercased())
                debugPrint(pokemon.sprites.frontDefault)
                debugPrint(pokemon.types[0].type.name.uppercased())
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
}
