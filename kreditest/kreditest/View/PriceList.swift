//
//  PriceList.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct PriceList: View {
    
    @Binding var navigating: Bool
    @StateObject private var pulsaLoader = GetPulsa()
    
    var body: some View {
        
        VStack {
            
            ForEach(pulsaLoader.pulsa, id: \.label) { each in
                
                PriceChoice(
                    product: each,
                    navigating: $navigating)
            }
        }
        .onAppear {
            pulsaLoader.load()
        }
    }
}
