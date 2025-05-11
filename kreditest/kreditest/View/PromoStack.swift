//
//  PromoStack.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//

import SwiftUI

struct PromoStack: View {
    
    @StateObject private var promoLoader = GetPromo()
    
    var body: some View {
    
        ScrollView(.horizontal) {
            HStack {
                ForEach(promoLoader.vouchers, id: \.id) { each in
                    
                    PromoCard(promo: each)
                }
            }
        }
        .padding(.medium)
        .onAppear {
            promoLoader.load()
        }
    }
}

#Preview {
    PromoStack()
}
