//
//  PokeImage.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokeImage: View {
    var body: some View {
        LazyVStack {
            WebImage(url: URL(string: "ttps://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png"))
                .resizable()
                .frame(width: 160, height: 160)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
        }
    }
}

struct PokeImage_Previews: PreviewProvider {
    static var previews: some View {
        PokeImage()
    }
}
