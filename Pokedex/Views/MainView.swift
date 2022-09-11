//
//  MainView.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var controller = Controller()
    var body: some View {
        VStack {
            HStack {
                Led(state: controller.stateLed)
                Spacer()
            }
            Screen(pokemon: controller.pokemon, type: .image, valueP: nil)
            Screen(pokemon: controller.pokemon, type: .text, valueP: controller.valueProgressView)
            Spacer()
            PokeButton(closure: controller.getRadomPokemon)
        }
        .onReceive(controller.timer) { _ in
            controller.getNewPokemon()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
