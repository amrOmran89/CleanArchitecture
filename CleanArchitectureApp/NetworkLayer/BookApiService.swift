//
//  BookApiService.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

enum ApiServiceError: Error {
    case badURL
}

protocol BookApiServicable {
    func downloadBooks(urlString: String) async throws -> Books
}

class BookApiService: BookApiServicable, Networkable {
    
    func downloadBooks(urlString: String) async throws -> Books {
        guard let url = URL(string: urlString) else {
            throw ApiServiceError.badURL
        }
        let request = URLRequest(url: url)
        let books: Books = try await fetch(urlRequest: request)
        return books
    }
}
