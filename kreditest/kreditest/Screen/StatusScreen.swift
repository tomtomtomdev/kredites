//
//  StatusScreen.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct StatusScreen: View {
    
    let phone: String
    @StateObject private var getStatus = GetStatus()
    
    var body: some View {
        
        VStack(spacing: .zero) {
            
            ScrollView(.vertical) {
                VStack {
                    
                    if let status = getStatus.status {
                        OrderDetail(
                            phone: phone,
                            status: status)
                    }
                    
                    PaymentDetail(
                        item_list: items,
                        payment_type: paymentType,
                        amount: amount)
                    
                    Disclaimer()
                }
                .padding(.large)
            }
            
            Spacer()
            
            NavigationLink {
                
            } label: {
                
                Text("Oke")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(.large)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }

        }
        .onAppear {
            getStatus.load()
        }
        .navigationTitle("Detail Pembayaran")
    }
    
    var paymentType: String {
        getStatus.status?
            .transaction_context
            .applied_payment_type ?? ""
    }
    
    var amount: String {
        getStatus.status?
            .transaction_context
            .amount ?? ""
    }
    
    var items: [ItemList] {
        getStatus.status?
            .transaction_context
            .item_list ?? []
    }
}
