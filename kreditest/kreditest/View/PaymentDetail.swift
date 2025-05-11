//
//  PaymentDetail.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

struct PaymentDetail: View {
    
    let item_list: [ItemList]
    let payment_type: String
    let amount: String

    var body: some View {
        
        VStack(spacing: .large) {
             Text("Detail Pembayaran")
                 .font(.title3)
                 .foregroundStyle(.gray)
                 .bold()
                 .padding(.medium)
                 .frame(maxWidth: .infinity, alignment: .leading)
                 .background(Color.veryLightBlue)
             
             ForEach(item_list, id: \.sku) { each in
                 
                 HStack {
                     Text(each.name)
                         .font(.caption)
                     
                     Spacer()
                     
                     Text(each.total_amount)
                         .font(.caption)
                 }
                 .padding(.horizontal, .large)
             }
             
             Rectangle()
                 .stroke(style: .init(dash: [5,5]))
                 .frame(height: 1)
                 .frame(maxWidth: .infinity)
                 .foregroundStyle(.lightGray)
             
             HStack {
                 Text(PaymentType(rawValue: payment_type)?.text ?? "")
                     .font(.title3)
                     .bold()
                 
                 Spacer()
                 
                 Text(amount)
                     .font(.title3)
                     .foregroundStyle(.orange)
             }
             .padding(.horizontal, .large)
             .padding(.bottom, .large)
         }
         .clipShape(RoundedRectangle(cornerRadius: .small))
         .overlay(
             RoundedRectangle(cornerRadius: .small)
                 .stroke(.lightGray))
    }
}
