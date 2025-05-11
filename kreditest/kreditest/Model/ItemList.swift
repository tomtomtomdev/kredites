//
//  ItemList.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//



struct ItemList: Decodable {
    
    let aggregated_price: String?
    let quantity: Int
    let status: String?
    let unit_price: String?
    let total_amount: String
    let p_id: Int?
    let sku_type: Int
    let name: String
    let sku: String
}
