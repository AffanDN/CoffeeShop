//
//  DetailCoffee.swift
//  CoffeeShop
//
//  Created by Macbook Pro on 17/04/24.
//

import SwiftUI

struct DetailCoffee: View {
    var coffee: ListCoffeeShop
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                HeaderView(coffee: coffee)
                Text(coffee.overview)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal)
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title3)
                    }
                    .tint(.primary)
                }
            }
        }
    }
}

#Preview {
    DetailCoffee(coffee: CoffeeshopProvider.allData().first!)
}
