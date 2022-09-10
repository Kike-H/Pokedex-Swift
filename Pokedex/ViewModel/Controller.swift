//
//  Controller.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import Foundation

final class Controller: ObservableObject {
    
    @Published var pokemon: Pokemon? = nil
    @Published var stateLed: LedState = .off
    let timer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()
    
    public func getRadomPokemon() {
        
        PokemonService.shared.fetchRadomPokemon(id: getRandomNumber()) { result in
            switch result {
            case .success(let pokemon):
                self.pokemon = pokemon
            case .failure(let error):
                debugPrint(error)
            }
        }
        self.stateLed = .onChange
        usleep(100000)
        self.stateLed = .on
    }
    
    private func getRandomNumber() -> Int {
        return Int.random(in: 1...905)
    }
}
