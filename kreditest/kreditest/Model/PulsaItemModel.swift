//
//  PulsaItemModel.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//



import Foundation

struct PulsaItemModel: Codable {
    
    let status: String
    let message: String
    let products: [Product]
}
