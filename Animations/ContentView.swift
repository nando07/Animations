//
//  ContentView.swift
//  Animations
//
//  Created by Fernando Gomez on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    @State private var dragAmount = CGSize.zero
    let letter = Array("Hello, SwiftUI")
    @State private var enabled = false
    
    @State private var isShowingRed = false
    
    var body: some View {
        
        VStack {
            Button("tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                
            }
        }
//        Text("Offset by passing CGSize()")
//            .border(Color.green)
//            .offset(CGSize(width: 0, height: 80))
//            .border(Color.gray)
           

//        HStack(spacing: 0) {
//            ForEach(0..<letter.count) { num in
//                Text(String(letter[num]))
//                    .padding(5)
//                    .font(.title)
//                    .background(enabled ? .blue : .red)
//                    .offset(dragAmount)
//                    .animation(.default.delay(Double(num) / 20), value: dragAmount
//                    )
//            }
//        }
//        .gesture(
//            DragGesture()
//                .onChanged { dragAmount = $0.translation
//                    print(dragAmount)
//                }
//                .onEnded { _ in
//                    dragAmount = .zero
//                    print(dragAmount)
//                    enabled.toggle()
//                }
//            )
        
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width:300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//            DragGesture()
//                .onChanged { dragAmount = $0.translation }
//                .onEnded { _ in
//                    withAnimation{ dragAmount = .zero }
//                }
//                )
        
//        // Coin rotating 360 degrees with spring effect
//        Button("Tap Me") {
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//                 // do nothing
//             .padding(50)
//             .background(.red)
//             .foregroundColor(.white)
//             .clipShape(Circle())
//             .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//
//
        
        
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
