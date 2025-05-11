//
//  PulsaDataScreen.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//


import SwiftUI

struct PulsaDataScreen: View {
    
    @State private var navigation = [NavigationRoute]()
    @State private var showList = false
    @State private var phone = ""
    @State private var selectedVoucher: Voucher?
    
    var body: some View {
                
        NavigationStack(path: $navigation) {
            VStack {
                
                TitleBar(title: "Top Up")
                
                ScrollView(.vertical) {
                    Tab(choices: [.pulsa, .data])
                    
                    MobileNumberInput(
                        phone: $phone,
                        showList: $showList)
                    
                    Rectangle()
                        .fill(.lightGray)
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                    
                    if showList {
                        PriceList(
                            navigation: $navigation)
                        
                        Rectangle()
                            .fill(.lightGray)
                            .frame(height: 10)
                            .frame(maxWidth: .infinity)
                    }
                    
                    Text("Promos")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.medium)
                    
                    PromoStack()
                }
            }
            .navigationDestination(for: NavigationRoute.self){ value in
                
                switch value {
                case .status:
                    StatusScreen(
                        phone: phone,
                        path: $navigation)
                
                case .transaction:
                    TransactionScreen(
                        phone: phone,
                        path: $navigation,
                        selectedVoucher: $selectedVoucher)
                    
                case .voucher:
                    VoucherScreen(
                        path: $navigation,
                        selectedVoucher: $selectedVoucher
                    )
                }
            }
        }
    }
}

#Preview {
    PulsaDataScreen()
}
