//
//  HeaderView.swift
//  CoffeeShop
//
//  Created by Macbook Pro on 17/04/24.
//

import SwiftUI

struct HeaderView: View {
    var coffee: ListCoffeeShop
    var body: some View {
        ZStack (alignment: .bottom) {
            Image(coffee.image)
            HStack{
                VStack(alignment: .leading, spacing: 5) {
                    Text(coffee.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(coffee.location)
                        .foregroundStyle(.secondary)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .frame(width:32, height: 32)
                    .foregroundStyle(.orange)
            }
//            .font(.largeTitle)
//            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
//            .padding(30)
//            .background(.green.opacity(0.5))
            .padding()
            .padding(.horizontal)
            .background(RandomColor.bgView().opacity(0.8))
        }
    }
}

#Preview {
    HeaderView(coffee: CoffeeshopProvider.allData().first!)
}
