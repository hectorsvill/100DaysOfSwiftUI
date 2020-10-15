//
//  ContentView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/15/20.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        Path { path in
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

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct Arc: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct ContentView2: View {
    var body: some View {
//        Triangle()
//            .stroke(
//                Color.green,
//                style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round)
//            )
//            .frame(width: 200, height: 200)
        
        Arc(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
        
    }
}


struct ContentView: View {
    var body: some View {
//        Circle()
//            .strokeBorder(Color.green, lineWidth: 10)
        Arc(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
            .strokeBorder(Color.blue, lineWidth: 4)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
