//
//  BookUseCase.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

typealias Books = [Book]

protocol BookUseCaseProtocol {
    func execute() async throws -> Books
}

class BookUseCase: BookUseCaseProtocol {
    
    let repository: BookRepositoryProtocol
    
    init(repository: any BookRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() async throws -> Books {
        try await repository.getBooks()
    }
}
