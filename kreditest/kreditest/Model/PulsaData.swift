//
//  PulsaData.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//



enum PulsaData {
    case pulsa,
    data
    
    var text: String {
        
        switch self {
        case .pulsa:
            return "Pulsa"
            
        case .data:
            return "Data Package"
        }
    }
}
