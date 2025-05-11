//
//  VoucherCard.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct VoucherCard: View {
    
    let voucher: Voucher
    @Binding var path: [NavigationRoute]
    @Binding var selectedVoucher: Voucher?
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            VStack {
                
                Rectangle()
                    .fill(Color.lightGray)
                    .frame(maxWidth: .infinity)
                
                Spacer()
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text(voucher.name)
                            .font(.title3)
                            .bold()
                        
                        (
                            Text("Berlaku hingga ")
                                .font(.caption)
                                .foregroundStyle(.gray) +
                            
                            Text(voucher.end_date)
                                .font(.caption)
                                .bold()
                                .foregroundStyle(.gray)
                        )
                    }
                    
                    Spacer()
                    
                    Button {
                        selectedVoucher = voucher
                        path.removeLast()
                        
                    } label: {
                        Text("Pakai")
                            .font(.caption)
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.large)
                            .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: .small))
                    }
                }
                .padding(.medium)
            }
            .frame(maxWidth: .infinity)
            .aspectRatio(CGSize(width: 2, height: 1), contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: .small))
            .overlay(
                RoundedRectangle(cornerRadius: .small)
                    .stroke(Color.lightGray))
            
            Text("Baru")
                .font(.caption)
                .foregroundStyle(.red)
                .bold()
                .padding(.small)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: .small)
                        .stroke(Color.lightGray)
                )
                .offset(y: 10)
        }
    }
}
