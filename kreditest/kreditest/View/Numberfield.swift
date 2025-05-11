//
//  Numberfield.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct Numberfield: View {
    
    @Binding var phone: String
    @Binding var showList: Bool

    var body: some View {
        
        HStack {
            TextField("", text: $phone)
                .keyboardType(.numberPad)
                .onChange(of: phone) { oldValue, newValue in
                    
                    showList = newValue.count > 3
                }
            
            Button {
                phone = ""
                
            } label: {
                
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.gray)
            }
            
            Image(systemName: "person.crop.rectangle.stack.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
        }
    }
}
