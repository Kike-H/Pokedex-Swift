//
//  PokeButton.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

struct PokeButton: View {
    let closure: () -> Void
    var body: some View {
        Button {
            closure()
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
        PokeButton(closure: ({debugPrint("Hello Pokedex")}) )
    }
}
