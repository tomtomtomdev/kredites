//
//  TransactionScreen.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct TransactionScreen: View {
    
    let phone: String
    @Binding var path: [NavigationRoute]
    @Binding var selectedVoucher: Voucher?
    
    @StateObject private var statusLoader = GetStatus()
    @State private var pin = ""
    @State private var showErrorPin = false
    
    var body: some View {
        
        VStack {
            ScrollView(.vertical) {
                
                TransactionHeader(
                    phone: phone,
                    context: statusLoader.status?.transaction_context)
                
                Rectangle()
                    .fill(.lightGray)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                
                Text("Rincian Pembayaran")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .bold()
                    .padding(.medium)
                
                ForEach(
                    statusLoader.status?
                        .transaction_context.item_list ?? [],
                    id: \.sku)
                { each in
                    
                    HStack {
                        Text(each.name)
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        
                        Text("Rp\(each.total_amount)")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    .padding(.medium)
                }
                
                Rectangle()
                    .fill(.lightGray)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                
                Text("Voucher")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .bold()
                    .padding(.horizontal, .medium)
                    .padding(.top, .medium)
                
                if selectedVoucher == nil {
                    VoucherInput(path: $path)
                    
                } else {
                    VoucherAssigned(voucher: $selectedVoucher)
                }
                
                Rectangle()
                    .fill(.lightGray)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                
                Text("PIN Kredivo")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .bold()
                    .padding(.medium)
                
                PinInput(text: $pin)
                    .onChange(of: pin) { oldValue, newValue in
                        if newValue.count >= 6 {
                            showErrorPin = false
                        }
                    }
                
                if showErrorPin {
                    Text("Mohon masukkan PIN anda dengan benar.")
                        .font(.caption)
                        .foregroundStyle(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.medium)
                }
                
                (
                    Text("Dengan melanjutkan saya setuju dengan ")
                        .font(.caption)
                        .foregroundStyle(.lightGray) +
                    Text("Perjanjian Pinjaman Kredivo")
                        .font(.caption)
                        .foregroundStyle(.lightBlue)
                        .bold()
                )
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.medium)
                
            }
            
            Button {
                if pin.count >= 6 {
                    path.append(.status)
                    showErrorPin = false
                    
                } else {
                    
                    showErrorPin = true
                }
                
            } label: {
                
                Text("Bayar")
                    .foregroundStyle(.white)
                    .font(.title3)
                    .bold()
                    .padding(.large)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }
            
        }
        .navigationTitle("Konfirmasi Pembayaran")
        .onAppear {
            statusLoader.load()
        }
    }
}
