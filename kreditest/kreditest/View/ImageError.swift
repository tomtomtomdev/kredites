//
//  ImageError.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

struct ImageError: View {
    
    let error: Error
    
    var body: some View {
        VStack {
            Image(systemName: "photo.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.gray)
            
            Text("Error")
                .font(.caption)
            
            Text(error.localizedDescription)
                .font(.caption2)
        }
    }
}
