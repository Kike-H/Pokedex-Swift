//
//  SplashScreen.swift
//  Pokedex
//
//  Created by Kike Hernandez D. on 10/09/22.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.4
    @State private var opacity = 0.6
    var body: some View {
        if (isActive) {
            ContentView()
        }
        else {
            VStack {
                VStack {
                    Image("Logo")
                        .font(.system(size: 80))
                    Text("by Kike Hernandez")
                        .font(.system(size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.5
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
