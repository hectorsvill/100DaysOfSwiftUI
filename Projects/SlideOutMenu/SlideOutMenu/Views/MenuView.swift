//
//  MenuView.swift
//  SlideOutMenu
//
//  Created by Hector Villasano on 10/26/20.
//

import SwiftUI

struct MenuView: View {
    @Binding var viewIsOpen: Bool
    @State private var selected = [0: true, 1: false, 2: false, 3: false, 4: false]
    @State private var selectedItem = 0
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        VStack {
            HStack {
                Button (action: {
                    print("Gear Button")
                    viewIsOpen.toggle()
                }) {
                    Image(systemName: "gear")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .heavy))
                        .frame(width: 32, height: 32)
                }

                ZStack {
                    //                    Image(systemName: "person")
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .padding(.horizontal, 24)
                    
                    Circle()
                        .stroke(Color.white)
                        .frame(width: 70, height: 70)
                }
                
                Button(action: {
                    print("cart")
                    viewIsOpen.toggle()
                }) {
                    Image(systemName: "cart")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .heavy))
                        .font(.system(size: 24, weight: .heavy))
                }

                
            }
            .padding(.top, 20)
            
            Text("hectorsvill")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
                .padding(.top, 10)
                .padding(.bottom, 40)
            
            
            Button (action: {
                print("Home")
                selected[selectedItem]!.toggle()
                selectedItem = 0
                selected[selectedItem]!.toggle()
                viewIsOpen.toggle()
            }) {
                MenuRowView(rowActive: selected[0]!, iconName: "house", text: "Home")
            }
            
            Button (action: {
                print("Profile")
                selected[selectedItem]!.toggle()
                selectedItem = 1
                selected[selectedItem]!.toggle()
                viewIsOpen.toggle()
            }) {
                MenuRowView(rowActive: selected[1]!, iconName: "person", text: "Profile")
            }
            
            Button (action: {
                print("Favorites")
                selected[selectedItem]!.toggle()
                selectedItem = 2
                selected[selectedItem]!.toggle()
                viewIsOpen.toggle()
            }) {
                MenuRowView(rowActive: selected[2]!, iconName: "heart", text: "Favorites")
            }
            
            Button (action: {
                print("Followers")
                selected[selectedItem]!.toggle()
                selectedItem = 3
                selected[selectedItem]!.toggle()
                viewIsOpen.toggle()
            })  {
                MenuRowView(rowActive: selected[3]!, iconName: "person.3", text: "Followers")
            }
            
            Spacer()
            
            Button (action: {
                print("Sign Out")
                selected[selectedItem]!.toggle()
                selectedItem = 4
                selected[selectedItem]!.toggle()
                viewIsOpen.toggle()
            }) {
                MenuRowView(rowActive: selected[4]!, iconName: "arrow.uturn.left", text: "Sign Out")
            }
        }
        .padding(.vertical, 20)
        .background(linearGradient)
        .padding(.trailing, 80)
        .offset(x: viewIsOpen ? 0 : -UIScreen.main.bounds.width)
        .animation(.default)
        .onTapGesture(count: 1, perform: {
            viewIsOpen.toggle()
        })
        .edgesIgnoringSafeArea(.vertical)
    }
    
    
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(viewIsOpen: .constant(true))
    }
}
