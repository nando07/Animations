//
//  ContentView.swift
//  Animations
//
//  Created by Fernando Gomez on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0

    var body: some View {
        
        
        // Coin rotating 360 degrees with spring effect
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
        }
                 // do nothing
             .padding(50)
             .background(.red)
             .foregroundColor(.white)
             .clipShape(Circle())
             .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))

         
        
        
//        print(animationAmount)
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(.easeOut(duration: 1).repeatCount(3, autoreverses: true)), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//                  .background(.red)
//            .foregroundColor((.white))
//                .clipShape(Circle())
//                .scaleEffect(animationAmount)
//        }
        
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
