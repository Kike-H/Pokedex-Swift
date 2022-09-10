//
//  Led.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 09/09/22.
//

import SwiftUI

enum LedState {
    case off
    case on
    case onChange
}

struct Led: View {
    let size: CGFloat = 25
    
    var state: LedState
    
    var colorLed: Color {
        switch state {
        case .off:
            return .red
        case .on:
            return .green
        case .onChange:
            return .yellow
        }
    }
    
    var body: some View {
        Circle()
            .frame(width: size, height: size)
            .foregroundColor(colorLed)
            .overlay {
                Circle()
                    .stroke(.gray, lineWidth: 2)
            }
            .padding()
    }
}

struct Led_Previews: PreviewProvider {
    static var previews: some View {
        Led(state: .off)
            .previewInterfaceOrientation(.portrait)
    }
}
