//
//  MobileNumberInput.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct MobileNumberInput: View {
    
    @Binding var phone: String
    @Binding var showList: Bool
        
    var body: some View {
        
        HStack {
            Circle()
                .stroke(
                    .lightBlue,
                    lineWidth: 1)
                .frame(width: 30, height: 30)
            
            VStack(alignment: .leading) {
                Text("Mobile Number")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                Numberfield(
                    phone: $phone,
                    showList: $showList)

                Rectangle()
                    .fill(.lightGray)
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(.medium)
    }
}
