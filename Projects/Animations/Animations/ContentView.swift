//
//  ContentView.swift
//  Animations
//
//  Created by Hector Villasano on 10/4/20.
//

import SwiftUI


// animating gestues
struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? Color.green : Color.yellow)
                    .offset(dragAmount)
                    .animation(
                        Animation.default.delay(Double(num) / 20)
                    )
                
            }
        }
        .gesture(
            DragGesture()
                .onChanged { 
                    dragAmount = $0.translation
                }
                .onEnded { _ in
                    dragAmount = .zero
                    self.enabled.toggle()
                }
        )
    }
}


/*
 //touch drag animation
struct ContentView: View {
    let gradientColors = Gradient(colors: [.green, .yellow])
    @State private var dragAmount = CGSize.zero

    var body: some View {
        LinearGradient(gradient: gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {
                        dragAmount = $0.translation
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            dragAmount = .zero
                        }
                    }
            )
    }
}
*/
/*
struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            //do something
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.green)
        .animation(nil)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}
*/

/*
struct ContentView: View {
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 3, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(
            .degrees(animationAmount), axis: (x: 0.5, y: 1.0, z: 0.1)
        )
    }
}
*/
/*
struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount: \(animationAmount, specifier: "%g")", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button("Tap Me") {
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
    
}
*/
/*
struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap This") {
            self.animationAmount += 1
        }.padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            self.animationAmount = 2
        }
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            Animation.easeOut(duration: 2)
//                .repeatForever(autoreverses: true)
//                .repeatCount(2, autoreverses: true)
//                .delay(0.5)
//        ) //.interpolatingSpring(stiffness: 50, damping: 1))
    }
}
*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
