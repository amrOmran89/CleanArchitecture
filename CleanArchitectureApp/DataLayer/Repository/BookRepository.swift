//
//  BookRepository.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

protocol BookRepositoryProtocol {
    func getBooks() async throws -> Books
}

class BookRepository: BookRepositoryProtocol {
    
    let dataSource: BookDataSourcable
    
    init(dataSource: any BookDataSourcable) {
        self.dataSource = dataSource
    }
    
    func getBooks() async throws -> Books {
        try await dataSource.fetchBooks()
    }
}
