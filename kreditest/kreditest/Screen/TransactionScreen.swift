//
//  TransactionScreen.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct TransactionScreen: View {
    
    let phone: String
    @StateObject private var statusLoader = GetStatus()
    @State private var pin = ""
    @State private var presentVoucherScreen = false

    var body: some View {
        
        NavigationStack {
        
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
                    
                    VoucherInput(
                        presentVoucherScreen: $presentVoucherScreen)
                    
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
                
                NavigationLink {
                    StatusScreen(phone: phone)
                    
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
            .navigationDestination(isPresented: $presentVoucherScreen) {
                VoucherScreen()
            }
        }
        .navigationTitle("Konfirmasi Pembayaran")
        .onAppear {
            statusLoader.load()
        }
    }
}
