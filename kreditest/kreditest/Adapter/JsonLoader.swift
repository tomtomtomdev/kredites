//
//  JsonLoader.swift
//  kreditest
//
//  Created by dev on 10/05/25.
//

import Foundation

final class JsonLoader<T:Decodable>: ObservableObject {
        
    func load(path: String) -> T? {
        
        guard let url = Bundle.main.url(forResource: path, withExtension: nil)
        else { return nil }
        
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(T.self, from: data)
            return decoded
        } catch {
            print("Error loading JSON: \(error)")
        }
        return nil
    }
}
