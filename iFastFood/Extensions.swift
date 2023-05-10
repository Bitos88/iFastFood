//
//  Extensions.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 10/5/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to get url: \(file) from Bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data \(file) from Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let myData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed decoding data")
        }
        
        return myData
    }
}
