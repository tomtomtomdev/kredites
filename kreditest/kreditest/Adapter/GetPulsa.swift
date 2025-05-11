//
//  PulsaLoader.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//



import SwiftUI

final class GetPulsa: ObservableObject {
    
    @Published var pulsa = [Product]()
        
    func load() {
        
        pulsa = JsonLoader<PulsaItemModel>()
            .load(path: "PulsaItemJson")?
            .products ?? []
    }
}
