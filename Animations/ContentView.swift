//
//  ContentView.swift
//  Animations
//
//  Created by Fernando Gomez on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0

    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(.easeOut(duration: 1).repeatCount(3, autoreverses: true)), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
                  .background(.red)
            .foregroundColor((.white))
                .clipShape(Circle())
                .scaleEffect(animationAmount)
        }
        
//        Button("Tap Me") {
////            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor((.white))
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(
//                    .easeInOut(duration: 1).repeatForever( autoreverses: false), value: animationAmount)
//        )
//
//        .onAppear {
//            animationAmount = 2
//
//        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
