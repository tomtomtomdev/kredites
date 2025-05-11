//
//  PaymentType.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

enum PaymentType: String {
    case payin30days = "30_days",
         cash,
         credit,
         debit
    
    var text: String {
        switch self {
        case .payin30days:
            return "Bayar dalam 30 hari"
            
        case .cash:
            return "Tunai"
            
        case .credit:
            return "Kartu Kredit"
            
        case .debit:
            return "Kartu Debit"
        }
    }
}
