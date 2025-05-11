//
//  Disclaimer.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

struct Disclaimer: View {
    
    var body: some View {
        (
            Text("Jika kamu punya kendala terkait transaksimu, pastikan untuk menghubungi customer service kami di ")
                .font(.caption) +
            Text("0807-1-573-348")
                .font(.caption)
                .foregroundStyle(.lightBlue) +
            Text(" atau ")
                .font(.caption) +
            Text("support@kredivo.com")
                .font(.caption)
                .foregroundStyle(.lightBlue)
        )
        .padding(.medium)
        .background(Color.veryLightGray)
        .clipShape(RoundedRectangle(cornerRadius: .medium))
    }
}
