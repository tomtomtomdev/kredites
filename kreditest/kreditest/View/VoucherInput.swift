//
//  VoucherInput.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct VoucherInput: View {
    
    @Binding var path: [NavigationRoute]
    
    var body: some View {
        
        HStack {
            ZStack(alignment: .center) {
                Image(systemName: "seal.fill")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.orange)
                
                Image(systemName: "percent")
                    .resizable()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(.white)
            }
            
            Text("Voucher untukmu")
                .font(.caption)
                .foregroundStyle(.lightGray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                path.append(.voucher)
                
            } label: {
                
                Text("Lihat")
                    .font(.caption)
                    .foregroundStyle(.orange)
                    .padding(.medium)
                    .background(Color.orange.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: .medium))
            }
        }
        .padding(.medium)
        .overlay(
            RoundedRectangle(cornerRadius: .medium)
                .stroke(Color.lightGray)
        )
        .padding(.medium)
    }
}
