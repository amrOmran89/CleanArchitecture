//
//  BookDataSource.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

protocol BookDataSourcable {
    func fetchBooks() async throws -> Books
}

class BookDataSource: BookDataSourcable {
    
    private let api = BookApiService()
    
    func fetchBooks() async throws -> Books {
        let url = "https://www.freetestapi.com/api/v1/books"
        return try await api.downloadBooks(urlString: url)
    }
}


class MockBookDataSource: BookDataSourcable {
    
    func fetchBooks() async throws -> Books {
        [
            Book(id: 1, title: "1984", author: "George Orwell"),
            Book(id: 2, title: "To Kill a Mockingbird", author: "Harper Lee")
        ]
    }
}
