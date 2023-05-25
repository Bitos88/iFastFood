//
//  OrderViewModel.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 21/5/23.
//

import Foundation

final class OrderViewModel:ObservableObject {
    enum PaymentTypes: String, CaseIterable {
        case cash = "Cash"
        case creditCard = "Credit Card"
        case fastfoodPoints = "FastFoodPoints"
    }

    @Published var orderedDishes:[MenuDishes] = []
    @Published var paymentType: PaymentTypes = .cash
    
    let tipAmounts = [10, 15, 20, 25, 0]
    
    func addDishToOrder(dish: MenuDishes) {
        orderedDishes.append(dish)
    }
    
    func totalPay(percentage: Int) -> String {
        let totalPrice = orderedDishes.reduce(0.0) { $0 + Double($1.price) }
        let tipAmount = totalPrice * Double(percentage) / 100.0
        return String(format: "%.2f", (totalPrice + tipAmount))
    }
}
