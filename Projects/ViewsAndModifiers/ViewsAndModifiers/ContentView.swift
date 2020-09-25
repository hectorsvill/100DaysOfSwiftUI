//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hector Villasano on 9/23/20.
//

import SwiftUI
//
//struct CapsuleText: View {
//    var text: String
//
//    var body: some View {
//        Text(text)
//            .font(.largeTitle)
//            .padding()
//            .background(Color.blue)
//            .clipShape(Capsule())
//    }
//}
//struct ContentView: View {
//
////    @State private var useGreenText = false
//
//    var firstName: some View {
//        Text("Hector")
//    }
//
//    var body: some View {
//        VStack {
//            firstName
//                .foregroundColor(.green)
//            CapsuleText(text: "Steven")
//                .foregroundColor(.white)
//            CapsuleText(text: "Villasano")
//        }.font(.largeTitle)    }
//}

//struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            .padding()
//            .background(Color.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
//}
//
//extension View {
//    func titleStyle() -> some View {
//        self.modifier(Title())
//    }
//}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { colums in
                        self.content(row, colums)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col  in
            HStack {
                Image(systemName: "\(row * 4 + col).circle").font(.title)
//                Text("R\(row) C\(col)")
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
