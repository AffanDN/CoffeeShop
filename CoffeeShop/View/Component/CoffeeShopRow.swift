//
//  CoffeeShopRow.swift
//  CoffeeShop
//
//  Created by Macbook Pro on 17/04/24.
//

import SwiftUI

struct CoffeeShopRow: View {
    var coffee: ListCoffeeShop
    var body: some View {
        HStack(alignment:.top, spacing: 16) {
            Image(coffee.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 10){
                Text(coffee.name)
                    .font(.system(.headline, design: .rounded))
                    .foregroundStyle(.blue)
                    .fontWeight(.heavy)
                Text(coffee.description)
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.bold)
                    .lineLimit(2)
                Text(coffee.location)
                    .font(.system(.caption, design:.rounded))
                    .foregroundStyle(.secondary)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    CoffeeShopRow(coffee: CoffeeshopProvider.allData().first!)
        .padding()
}
