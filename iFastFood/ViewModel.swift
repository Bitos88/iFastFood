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
    @Published var search = ""
        
    init() {
        do {
            menuItems = try persistence.fetchData()
        } catch {
            menuItems = []
        }
    }
    
    func showDish(dish: MenuDishes) -> Bool {
        search.isEmpty || dish.name.lowercased().contains(search.lowercased())
    }
}
