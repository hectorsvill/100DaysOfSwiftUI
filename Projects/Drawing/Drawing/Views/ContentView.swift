//
//  ContentView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Triangle Path", destination: trianglePath())
                NavigationLink("Triangle View", destination: TriangleView())
                NavigationLink("Arc View", destination: ArcView())
                NavigationLink("Flower Shape View", destination: FlowerShapeView())
                NavigationLink("Color Cycling Circle View", destination: ColorCyclingCircleView())
                NavigationLink("Special Effects View", destination: SpecialEffectsView())
                NavigationLink("Image Blur View", destination: ImageBlurView())
                NavigationLink("Trapezoid View View", destination: TrapezoidView())
                
            }
            
            .navigationTitle("Drawing")
        }
        
        
    }
    
    func trianglePath() -> some View {
        return Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(
            Color.blue.opacity(0.1),
            style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round)
        )
        .animation(.easeInOut)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
