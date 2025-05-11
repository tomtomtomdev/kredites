//
//  PromoCard.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//

import SwiftUI

struct PromoCard: View {
    
    let promo: Voucher
    
    var body: some View {
                    
        AsyncImage(url: URL(string: promo.image_url)) { response in
            
            switch response {
            case .empty:
                ProgressImageLoad()
                
            case .success(let image):
                image.resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                    .aspectRatio(CGSize(width: 2, height: 1), contentMode: .fit)
                
            case .failure(let error):
                ImageError(error: error)
                
            @unknown default:
                UnhandledImageLoadingCase()
            }
        }
    }
}
