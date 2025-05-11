//
//  TransactionHeader.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct TransactionHeader: View {
    
    let phone: String
    let context: TransactionContext?
    
    var body: some View {
        
        HStack {
            CircleImage(url: context?.merchant_details.logo_url)
            
            Text(phone)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding(.medium)
    }
}

