//
//  MainMenuListView.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 14/5/23.
//

import SwiftUI

struct MainMenuListView: View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.menuItems) { section in
                    Section(section.name) {
                        ForEach(section.items) { dish in
                            NavigationLink(value: dish) {
                                MainListCellView(menuDish: dish)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MainMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuListView()
    }
}
