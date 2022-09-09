//
//  PokeInfo.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct PokeInfo: View {
    let color: Color = Color(uiColor: UIColor(named: "ScreenColor2")!)
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 95)
            .foregroundColor(color)
            .overlay {
                VStack {
                    TextScreen(textString: "NAME: CHARIZARD", fontSize: 30)
                    TextScreen(textString: "TYPE: FIRE", fontSize: 28)
                }
            }
    }
}

struct PokeInfo_Previews: PreviewProvider {
    static var previews: some View {
        PokeInfo()
    }
}
