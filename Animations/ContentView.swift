//
//  ContentView.swift
//  Animations
//
//  Created by Shah Md Imran Hossain on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.default, value: animationAmount)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount) // spring effect
//        .animation(.easeInOut(duration: 2).delay(1), value: animationAmount)
//        .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: animationAmount)
        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: animationAmount) // repeat forever
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
