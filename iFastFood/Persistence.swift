//
//  Persistence.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 10/5/23.
//

import Foundation

final class Persitence {
    static let shared = Persitence()
    
    private init(){}
    
    func fetchData() throws -> [MenuModel] {
        return Bundle.main.decode(type: [MenuModel].self, from: "menu.json")
    }
}
