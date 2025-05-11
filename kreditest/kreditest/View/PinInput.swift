//
//  PinInput.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct PinInput: View {
    
    @Binding var text: String
    
    @State private var hidden = false
    
    var body: some View {
        
        HStack {
            if hidden {
                SecureField("", text: $text)
                    .font(.caption)
                    .frame(maxWidth: .infinity)
                
            } else {
                
                TextField("", text: $text)
                    .font(.caption)
                    .frame(maxWidth: .infinity)
            }
            
            Button {
                hidden.toggle()
                
            } label: {
                Image(systemName: hidden ? "eye.slash" : "eye")
                    .resizable()
                    .frame(width: 24, height: 18)
            }
        }
        .padding(.medium)
        .overlay(
            RoundedRectangle(cornerRadius: .small)
                .stroke(Color.lightBlue)
        )
        .padding(.medium)
    }
}
