//
//  CircleImage.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

struct CircleImage: View {
    
    let url: String?
    
    var body: some View {
        
        if let logo_url = url {
            
            AsyncImage(url: URL(string: logo_url)) { response in
                
                switch response {
                case .empty:
                    ProgressImageLoad()
                    
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                    
                case .failure:
                    ErrorLogo()
                    
                @unknown default:
                    UnhandledImageLoadingCase()
                }
            }
            
        } else {
            
            Text("No url")
                .font(.caption)
                .foregroundStyle(.gray)
        }
    }
}
