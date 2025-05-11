//
//  Tab.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct Tab: View {
    
    let choices: [PulsaData]
    @State private var selected = PulsaData.pulsa
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            ForEach(choices, id: \.self) { each in
                
                Button {
                    selected = each
                } label: {
                    TabItem(
                        model: each,
                        selected: selected == each)
                    
                }
            }
        }
    }
}

#Preview {
    Tab(choices: [.data, .pulsa])
}
