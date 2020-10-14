//
//  Bundle+Decodable.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/13/20.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("url Error with file \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data")
        }
        
        guard let loaded = try? JSONDecoder().decode([Astronaut].self, from: data) else {
            fatalError("Failed to decode data")
        }
        
        return loaded
    }
}
