//
//  Networkable.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

protocol Networkable {
    func fetch<T: Codable>(urlRequest: URLRequest) async throws -> T
}

extension Networkable {
    
    func fetch<T: Codable>(urlRequest: URLRequest) async throws -> T {
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let json = try JSONDecoder().decode(T.self, from: data)
        return json
    }
}
