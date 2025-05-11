//
//  OrderDetail.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

struct OrderDetail: View {
    
    let phone: String
    let status: StatusModel
    
    var body: some View {
        VStack {
            Text("Detail Pesanan")
                .font(.title3)
                .foregroundStyle(.gray)
                .bold()
                .padding(.large)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.veryLightBlue)
            
            HStack {
                CircleImage(
                    url: status.transaction_context
                        .merchant_details
                        .logo_url)
                
                Text(phone)
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.medium)
            
            Rectangle()
                .fill(.lightGray)
                .frame(height: 1)
                .frame(maxWidth: .infinity)
            
            HStack {
                Text("Status")
                    .font(.caption)
                
                Spacer()
                
                Text(transactionStatus.text)
                    .font(.caption)
                    .foregroundStyle(transactionStatus.color)
            }
            .padding(.top, .medium)
            .padding(.horizontal, .medium)
            
            HStack {
                Text("Order ID")
                    .font(.caption)
                
                Spacer()
                
                Text(status.transaction_context.order_id)
                    .font(.caption)
            }
            .padding(.horizontal, .medium)
            .padding(.bottom, .medium)
        }
        .clipShape(RoundedRectangle(cornerRadius: .small))
        .overlay(
            RoundedRectangle(cornerRadius: .small)
                .stroke(.lightGray))
    }
    
    private var transactionStatus: TransactionStatus {
        TransactionStatus(
            rawValue: status
                .transaction_context
                .transaction_status) ?? .pending
    }
}
