//
//  MenuRowView.swift
//  SlideOutMenu
//
//  Created by Hector Villasano on 10/26/20.
//

import SwiftUI

struct MenuRowView: View {
    var rowActive: Bool
    var iconName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(rowActive ? Color.gray : .white)
                .font(.system(size: 15, weight: rowActive ? .bold  : .regular))
                .frame(width: 48, height: 32)
            Text(text)
                .foregroundColor(rowActive ? Color.gray : .white)
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
            
            Spacer()
            
        }
        .padding(4)
        .background(rowActive ? Color.white : Color.white.opacity(0))
        .padding(.trailing, 20)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .offset(x: 20)
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(rowActive: true, iconName: "house", text: "Dashboard")
    }
}
