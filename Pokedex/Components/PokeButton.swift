//
//  PokeButton.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct PokeButton: View {
    var body: some View {
        Button {
            debugPrint("Getting pokemon")
        } label: {
            Text("SHOW POKEMON")
                .font(.title)
                .bold()
                .frame(width: 285, height: 75)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: .black, radius: 5)
                .padding()
        }
    }
}

struct PokeButton_Previews: PreviewProvider {
    static var previews: some View {
        PokeButton()
    }
}
