//
//  ContentView.swift
//  SlideOutMenu
//
//  Created by Hector Villasano on 10/26/20.
//

import SwiftUI

struct ContentView: View {
    @State private var menuViewIsOpen = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: { menuViewIsOpen.toggle() }) {
                        Image(systemName: "sidebar.left")//"line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
                                
                Spacer()
                
                Text("If we look at the world with a love of life, the world will reveal its beauty to us.")
                    .font(.system(size: 33, weight: .light))
                    .padding(.bottom, 15)
                
                Text("Daisaku Ikeda")
                                
                Spacer()

            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
