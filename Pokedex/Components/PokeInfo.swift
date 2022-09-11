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
    
    
    var value: Float
    
    var name: String {
        return pokemon != nil ? "NAME: \(pokemon?.name?.uppercased() ?? "NO NAME")" : ""
    }
    
    var type: String {
        return pokemon != nil ? "TYPE: \(pokemon?.types?[0].type?.name?.uppercased() ?? "NO TYPE")" : ""
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 150)
            .foregroundColor(color)
            .overlay {
                VStack {
                    TextScreen(textString: name, fontSize: 22)
                    TextScreen(textString: type, fontSize: 22)
                    TextScreen(textString: "NEW POKEMON IN: ", fontSize: 20)
                    ProgressView(value: value, total: 30.0)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color(uiColor: UIColor(named: "LetterScreenColor")!)))
                        .padding(.horizontal, 32)
                }
            }
    }
}

struct PokeInfo_Previews: PreviewProvider {
    static var previews: some View {
        PokeInfo(pokemon: nil, value: 0.0)
    }
}
