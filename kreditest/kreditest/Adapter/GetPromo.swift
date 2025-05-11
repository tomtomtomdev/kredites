//
//  PromoLoader.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//

import SwiftUI

final class GetPromo: ObservableObject {
    
    @Published var vouchers = [Voucher]()
        
    func load() {
        
        vouchers = JsonLoader<VoucherItemModel>()
            .load(path: "VoucherItemJson")?
            .data ?? []
    }
}
