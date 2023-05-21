//
//  OrderListView.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 21/5/23.
//

import SwiftUI

struct OrderListView: View {
    @EnvironmentObject var vmOrder: OrderViewModel
    @State private var isEditing = false

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(vmOrder.orderedDishes) { dish in
                        HStack {
                            Text(dish.name)
                            Spacer()
                            Text("$\(dish.price)")
                        }
                    }
                    .onDelete { vmOrder.orderedDishes.remove(atOffsets: $0) }
                    .onMove { vmOrder.orderedDishes.move(fromOffsets: $0, toOffset: $1) }
                }
                Section {
                    Button {
                        
                    } label: {
                        Text("Confirm Order")
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .buttonStyle(.bordered)
                    .listRowBackground(Color.clear)
                }
                .disabled(vmOrder.orderedDishes.isEmpty)
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
            .environmentObject(OrderViewModel())
    }
}
