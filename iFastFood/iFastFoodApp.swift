//
//  iFastFoodApp.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 10/5/23.
//

import SwiftUI

@main
struct iFastFoodApp: App {
    @StateObject var vm = ViewModel()
    @StateObject var vmOrder = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(vm)
                .environmentObject(vmOrder)
        }
    }
}
