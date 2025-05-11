//
//  PinInput.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct PinInput: View {
    
    @Binding var text: String
    
    var body: some View {
        
        HStack {
            TextField("", text: $text)
                .frame(maxWidth: .infinity)
            
            Image(systemName: "eye")
                .resizable()
                .frame(width: 24, height: 18)
        }
        .padding(.medium)
        .overlay(
            RoundedRectangle(cornerRadius: .small)
                .stroke(Color.lightBlue)
        )
        .padding(.medium)
    }
}
