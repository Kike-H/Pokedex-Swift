//
//  PokeImage.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokeImage: View {
    let width: CGFloat = 190
    let height: CGFloat = 160
    let size: CGFloat = 160
    let color: Color = Color(uiColor: UIColor(named: "ScreenColor2")!)
    var body: some View {
        LazyVStack {
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(color)
                .overlay {
                    WebImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png"))
                        .resizable()
                        .frame(width: size, height: size)
                        .aspectRatio(contentMode: .fit)
                }
        }
    }
}

struct PokeImage_Previews: PreviewProvider {
    static var previews: some View {
        PokeImage()
    }
}
