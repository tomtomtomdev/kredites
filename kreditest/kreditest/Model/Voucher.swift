//
//  Voucher.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//



struct Voucher: Decodable {
    
    let name: String
    let number: Int
    let percentage: Int
    let iterator: Int
    let image_url: String
    let min_transaction_amount: Int
    let end_date: String
    let id: Int
    let terms_and_condition: String
    let how_to_use: String
    let usage_count: Int
    let start_date: String
    let max_discount: Int?
    let voucher_code: String
    
}
