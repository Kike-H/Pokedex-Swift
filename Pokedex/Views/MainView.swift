//
//  MainView.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        VStack {
            HStack {
                Led()
                Spacer()
            }
            Screen(type: .image)
            Screen(type: .text)
            Spacer()
            PokeButton()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
