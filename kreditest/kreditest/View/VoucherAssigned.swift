//
//  VoucherAssigned.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

struct VoucherAssigned: View {
    
    @Binding var voucher: Voucher?
    
    var body: some View {
        
        HStack {
            Image(systemName: "checkmark.seal.fill")
                .foregroundStyle(.green)
            
            VStack {
                Text(voucher?.name ?? "")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Yeay! Kamu mendapatkan promo cicilan 0%")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Button {
                voucher = nil
                
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.gray)
            }
        }
        .padding(.medium)
        .background(.veryLightGreen)
        .clipShape(RoundedRectangle(cornerRadius: .medium))
        .overlay(RoundedRectangle(cornerRadius: .medium).stroke(Color.lightGreen))
        .padding(.medium)
    }
}
