//
//  ViewModel.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 14/5/23.
//

import Foundation

final class ViewModel: ObservableObject {
    let persistence = Persitence.shared
    
    @Published var menuItems:[MenuModel] = []
    
    init() {
        do {
            menuItems = try persistence.fetchData()
        } catch {
            print("Fail loading data")
            menuItems = []
        }
    }
}
