//
//  Abbreviator.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

struct Abbreviator {
    
    let number: Double
    
    var result: String {
        
        number / 1000_000 > 1 ?
        number / 1000_000_000 > 1 ?
        number / 1000_000_000_000 > 1 ?
        number / 1000_000_000_000_000 > 1 ?
        number / 1000_000_000_000_000_000 > 1 ?
        number / 1000_000_000_000_000_000_000 > 1 ?
        "\((number / 1000_000_000_000_000_000_000).formatted(.number)) Sx" :
        "\((number / 1000_000_000_000_000_000).formatted(.number)) Qn" :
        "\((number / 1000_000_000_000_000).formatted(.number)) Qa" :
        "\((number / 1000_000_000_000).formatted(.number)) T" :
        "\((number / 1000_000_000).formatted(.number)) B" :
        "\((number / 1000_000).formatted(.number)) M" :
        number.formatted(.number)
    }
}
