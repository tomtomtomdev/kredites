//
//  TransactionStatus.swift
//  kreditest
//
//  Created by dev on 11/05/25.
//

import SwiftUI

enum TransactionStatus: Int {
    case sending = 1,
         failed,
         pending,
         success
    
    var text: String {
        switch self {
        case .sending:
            return "Dikirim"
        case .failed:
            return "Gagal"
        case .pending:
            return "Diproses"
        case .success:
            return "Berhasil"
        }
    }
    
    var color: Color {
        switch self {
        case .sending:
            return .lightGray
        case .failed:
            return .red
        case .pending:
            return .orange
        case .success:
            return .green
        }
    }
}
