//
//  ContentView.swift
//  Animations
//
//  Created by Shah Md Imran Hossain on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack(spacing: 12) {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
                
            }
            .frame(width: 150, height: 80)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .cornerRadius(30)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
