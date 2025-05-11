//
//  PriceChoice.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct PriceChoice: View {
    
    let product: Product
    @Binding var navigation: [NavigationRoute]
    
    var body: some View {
        
        VStack {
            HStack {
                
                VStack {
                    Text("Nominal:")
                        .foregroundStyle(.black)
                        .font(.caption)
                    
                    Text(product.label.components(separatedBy: " ").last ?? "")
                        .font(.caption)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                Button {
                    navigation.append(.transaction)
                    
                } label: {
                    Text("Rp \(Abbreviator(number: product.price).result)")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .padding(.medium)
                        .frame(maxWidth: 100)
                        .background(
                            .lightBlue
                        )
                }
            }
            .padding(.medium)
            
            Rectangle()
                .fill(.lightGray)
                .frame(height: 1)
                .frame(maxWidth: .infinity)
        }
    }
}
