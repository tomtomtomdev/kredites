//
//  VoucherScreen.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct VoucherScreen: View {
    
    @StateObject private var getVoucher = GetPromo()
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(spacing: .large) {
                
                ForEach(getVoucher.vouchers, id: \.id) { each in
                    
                    VoucherCard(voucher: each)
                }
            }
            .onAppear {
                getVoucher.load()
            }
            .padding(.large)
        }
        .navigationTitle("Voucher Saya")
    }
}

