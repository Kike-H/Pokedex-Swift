//
//  PokeInfo.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct PokeInfo: View {
    let color: Color = Color(uiColor: UIColor(named: "ScreenColor2")!)
    let pokemon: Pokemon?
    
    var name: String {
        return pokemon != nil ? "NAME: \(pokemon?.name?.uppercased() ?? "NO NAME")" : ""
    }
    
    var type: String {
        return pokemon != nil ? "TYPE: \(pokemon?.types?[0].type?.name?.uppercased() ?? "NO TYPE")" : ""
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 95)
            .foregroundColor(color)
            .overlay {
                VStack {
                    TextScreen(textString: name, fontSize: 30)
                    TextScreen(textString: type, fontSize: 28)
                }
            }
    }
}

struct PokeInfo_Previews: PreviewProvider {
    static var previews: some View {
        PokeInfo(pokemon: nil)
    }
}
