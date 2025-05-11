//
//  PulsaDataScreen.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//


import SwiftUI

struct PulsaDataScreen: View {
    
    @State private var navigating = false
    @State private var showList = false
    @State private var phone = ""
    
    var body: some View {
                
        NavigationStack {
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
                            navigating: $navigating)
                        
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
            .navigationDestination(isPresented: $navigating) {
                
                TransactionScreen(phone: phone)
            }
        }
    }
}

#Preview {
    PulsaDataScreen()
}
