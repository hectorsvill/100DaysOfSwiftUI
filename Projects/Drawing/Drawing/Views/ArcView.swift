//
//  ArcView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/18/20.
//

import SwiftUI

fileprivate struct Arc: InsettableShape {
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

struct ArcView: View {
    @State private var startAngle: Double = -90
    @State private var endAngle: Double = 90
    var body: some View {
        VStack {
            Arc(startAngle: .degrees(startAngle), endAngle: .degrees(endAngle), clockwise: true)
                .strokeBorder(Color.blue, lineWidth: 4)
            
            Text("StartAngle")
            Slider(value: $startAngle, in: -180...0)
                
            Text("EndAngle")
            Slider(value: $endAngle, in: 0...180)
        }
        .animation(.easeOut)
        
        
        
    }
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ArcView()
    }
}
