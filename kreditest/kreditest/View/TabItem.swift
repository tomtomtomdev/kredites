//
//  TabItem.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct TabItem: View {
    
    let model: PulsaData
    let selected: Bool
    
    var body: some View {
        
        VStack {
            Text(model.text)
                .font(.subheadline)
                .foregroundStyle(selected ? .orange : .gray)
                .padding(.medium)
                .frame(maxWidth: .infinity)
            
            Rectangle()
                .fill(selected ? .orange : .white)
                .frame(height: 5)
            
        }
    }
}

#Preview {
    TabItem(model: .data, selected: false)
}
