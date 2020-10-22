//
//  Result.swift
//  Cupcake Corner
//
//  Created by Hector Villasano on 10/21/20.
//

import Foundation

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

