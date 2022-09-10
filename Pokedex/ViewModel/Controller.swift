//
//  Controller.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import Foundation
import AVFoundation

final class Controller: ObservableObject {
    
//    var player: AVPlayer!
    var player: AVAudioPlayer!
    
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
        self.playSound()
        self.stateLed = .on
        usleep(100000)
    }
    
    private func getRandomNumber() -> Int {
        return Int.random(in: 1...905)
    }
    
    private func playSound() {
        let url = Bundle.main.url(forResource: "beep", withExtension: "mp3")
        guard url != nil else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
        catch {
            debugPrint("something were wrong \(error)")
        }
    }
    
}
