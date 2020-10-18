//
//  TriangleView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/18/20.
//

import SwiftUI

fileprivate struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct TriangleView: View {
    var body: some View {
        VStack {
            ScrollView {
                TriangleShape()
                    .stroke(
                        Color.green,
                        style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round)
                    )
                    .frame(width: 200, height: 200)
                
                Text("""
                    TriangleShape()
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                        .frame(width: 200, height: 200)
                    
                    """)
            }
        }
        .animation(.easeOut)
        
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
