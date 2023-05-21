//
//  OrderViewModel.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 21/5/23.
//

import Foundation

final class OrderViewModel:ObservableObject {
    
    @Published var orderedDishes:[MenuDishes] = []
    
    func addDishToOrder(dish: MenuDishes) {
        orderedDishes.append(dish)
        print(orderedDishes)
    }
}
