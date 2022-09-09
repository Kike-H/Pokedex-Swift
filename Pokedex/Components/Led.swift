//
//  Led.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct Led: View {
    let size: CGFloat = 25
    var body: some View {
        Circle()
            .frame(width: size, height: size)
            .foregroundColor(.green)
            .overlay {
                Circle()
                    .stroke(.gray, lineWidth: 2)
            }
            .padding()
    }
}

struct Led_Previews: PreviewProvider {
    static var previews: some View {
        Led()
            .previewInterfaceOrientation(.portrait)
    }
}
