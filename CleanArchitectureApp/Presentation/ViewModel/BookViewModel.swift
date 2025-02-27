//
//  BookViewModel.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

class BookViewModel: ObservableObject {
    
    @Published var books = Books()
    @Published var error: Error?
    
    let useCase: BookUseCaseProtocol
    
    init(useCase: any BookUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func getBooks() async {
        do {
            let result = try await useCase.execute()
            await MainActor.run {
                books = result
            }
        } catch {
            await MainActor.run {
                self.error = error
            }
        }
    }
}
