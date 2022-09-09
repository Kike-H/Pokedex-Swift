//
//  Screen.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

// Dimensions 320 x 220

import SwiftUI
import SDWebImageSwiftUI

enum Type {
    case image
    case text
}

struct Screen: View {
    
    // Const
    let cornerRadius: CGFloat = 8
    let imageSize: CGFloat = 160
    let lineWidth: CGFloat = 4
    
    // Variables
    let type: Type
    let width: CGFloat = 320
    let colorScreen: Color = Color(uiColor: UIColor(named: "ScreenColor1")!)
    
    var height: CGFloat {
        switch type {
        case .image:
            return 220
        case .text:
            return 120
        }
    }
    
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: cornerRadius)
            .frame(width: width, height: height)
            .foregroundColor(colorScreen)
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.black, lineWidth: lineWidth)
                    .overlay {
                        AnyView(type == .image ? AnyView(PokeImage()) : AnyView(PokeInfo()))
                    }
            }
            .padding([.bottom, .top], 20)
    }
}

struct Screen_Previews: PreviewProvider {
    static var previews: some View {
        Screen(type: .image)
        Screen(type: .text)
    }
}
