//
//  TextScreen.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct TextScreen: View {
    var textString: String
    var fontSize: CGFloat
    let color: Color = Color(uiColor: UIColor(named: "LetterScreenColor")!)
    var body: some View {
        Text(textString)
            .font(.custom("Minecraft", fixedSize: fontSize))
            .fontWeight(.bold)
            .foregroundColor(color)
            .padding([.bottom], 5)
    }
}

struct TextScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextScreen(textString: "Hello Pokedex", fontSize: 34)
    }
}
