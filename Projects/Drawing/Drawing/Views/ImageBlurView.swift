//
//  ImageBlurView.swift
//  Drawing
//
//  Created by Hector Villasano on 10/19/20.
//

import SwiftUI

struct ImageBlurView: View {
    @State private var amount: CGFloat = 0.0
    
    var body: some View {
//        ZStack {
//            Image("hsv_selfi")
//
//            Rectangle()
//                .fill(Color.green)
//                .blendMode(.multiply)
//        }
//        .frame(width: 400, height: 500)
//        .clipped()
        
//        Image("hsv_selfi")
//            .colorMultiply(.green)
        VStack {
            Image("hsv_selfi")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(Double(amount))
                .blur(radius: (1 - amount) * 20)
            
            
            Slider(value: $amount)
                .padding()
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct ImageBlurView_Previews: PreviewProvider {
    static var previews: some View {
        ImageBlurView()
    }
}
