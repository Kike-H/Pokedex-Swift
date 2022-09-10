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
    
    let linkImage: String?
    
    var body: some View {
        LazyVStack {
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(color)
                .overlay {
                    WebImage(url: URL(string: linkImage ?? ""))
                        .resizable()
                        .frame(width: size, height: size)
                        .aspectRatio(contentMode: .fit)
                }
        }
    }
}

struct PokeImage_Previews: PreviewProvider {
    static var previews: some View {
        PokeImage(linkImage: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png")
    }
}
