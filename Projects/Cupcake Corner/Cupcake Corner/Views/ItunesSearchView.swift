//
//  ItunesSearchView.swift
//  Cupcake Corner
//
//  Created by Hector Villasano on 10/21/20.
//

import SwiftUI

struct ItunesSearchView: View {
    @State private var results = [Result]()
    
    var body: some View {
        
        NavigationView {
            List(results, id: \.trackId) { item in
                VStack(alignment: .leading) {
                    Text("\(item.trackId)")
                    
                    Text(item.trackName)
                        .font(.headline)
                    
                    Text(item.collectionName)
                }
            }
            .navigationTitle("Itunes Search")
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data,
               let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                
                DispatchQueue.main.async {
                    self.results = decodedResponse.results
                }
                
                return
            }
            
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown Error")")
            
        }.resume()
    }
}

struct ItunesSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ItunesSearchView()
    }
}
