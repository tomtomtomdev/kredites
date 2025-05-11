//
//  Product.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//



struct Product: Codable {
        
    let product_code: String
    let bill_type: String
    let label: String
    let `operator`: String
    let nominal: String
    let description: String
    let sequence: Int?
    let price: Double
}
