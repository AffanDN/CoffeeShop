//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Macbook Pro on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var coffees: [ListCoffeeShop] = CoffeeshopProvider.allData()
    var body: some View {
        NavigationStack {
            List(coffees) { coffee in
                NavigationLink {
                    DetailCoffee(coffee: coffee)
                } label: {
                    CoffeeShopRow(coffee: coffee)
                }

            }
            .navigationTitle("Coffeeshop")
            .fontWeight(.bold)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
