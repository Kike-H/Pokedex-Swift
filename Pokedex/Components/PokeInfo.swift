//
//  PokeInfo.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct PokeInfo: View {
    var body: some View {
        VStack {
            TextScreen(textString: "Name: Charizard", fontSize: 34)
            TextScreen(textString: "Type: Fire", fontSize: 30)
        }
    }
}

struct PokeInfo_Previews: PreviewProvider {
    static var previews: some View {
        PokeInfo()
    }
}
