//
//  DetailView.swift
//  iFastFood
//
//  Created by Alberto Alegre Bravo on 16/5/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var vmOrder: OrderViewModel
    let dish: MenuDishes
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(dish.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(dish.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(dish.description)
                .padding()
            
            Button {
                vmOrder.addDishToOrder(dish: dish)
            } label: {
                Text("Order This")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .navigationTitle(dish.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(dish: .previewDish)
                .environmentObject(ViewModel())
        }
    }
}
