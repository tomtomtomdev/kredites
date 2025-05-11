//
//  TitleBar.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

struct TitleBar: View {
    
    let title: String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .foregroundStyle(.white)
            .padding(.medium)
            .frame(maxWidth: .infinity)
            .background(.lightBlue)
    }
}

#Preview {
    TitleBar(title: "Top Up")
}
