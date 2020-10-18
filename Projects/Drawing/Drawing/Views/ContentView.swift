//
//  ContentView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        trianglePath()

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
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
