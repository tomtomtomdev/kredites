//
//  ErrorLogo.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct ErrorLogo: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.lightGray)
                    .frame(width: 24, height: 24)
                
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.white)
            }
            
            Text("Error")
                .font(.caption)
                .foregroundStyle(.gray)
        }
    }
}
