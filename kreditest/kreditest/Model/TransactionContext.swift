//
//  TransactionContext.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//



struct TransactionContext: Decodable {
    
    let transaction_status: Int
    let merchant_details: MerchantDetails
    let applied_payment_type: String
    let checkout_amount: String
    let order_id: String
    let item_list: [ItemList]
    let expiration_time: String
    let amount: String
    let transaction_token: String
}
