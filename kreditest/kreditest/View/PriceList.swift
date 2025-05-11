//
//  PriceList.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct PriceList: View {
    
    @Binding var navigation: [NavigationRoute]
    @StateObject private var pulsaLoader = GetPulsa()
    
    var body: some View {
        
        VStack {
            
            ForEach(pulsaLoader.pulsa, id: \.label) { each in
                
                PriceChoice(
                    product: each,
                    navigation: $navigation)
            }
        }
        .onAppear {
            pulsaLoader.load()
        }
    }
}
