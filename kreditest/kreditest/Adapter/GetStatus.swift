//
//  GetStatus.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import SwiftUI

final class GetStatus: ObservableObject {
    
    @Published var status: StatusModel?
    
    func load() {
        
        status = JsonLoader<StatusModel>()
            .load(path: "StatusPageJson")
    }
}
