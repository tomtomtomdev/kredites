//
//  VoucherScreen.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct VoucherScreen: View {
    
    @StateObject private var getVoucher = GetPromo()
    @Binding var path: [NavigationRoute]
    @Binding var selectedVoucher: Voucher?
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(spacing: .large) {
                
                ForEach(getVoucher.vouchers, id: \.id) { each in
                    
                    VoucherCard(
                        voucher: each,
                        path: $path,
                        selectedVoucher: $selectedVoucher)
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

