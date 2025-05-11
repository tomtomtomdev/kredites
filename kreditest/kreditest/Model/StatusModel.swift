//
//  StatusModel.swift
//  kreditest
//
//  Created by dev on 09/05/25.
//




struct StatusModel: Decodable {
    
    let message: String
    let status: String
    let transaction_context: TransactionContext
    
}
