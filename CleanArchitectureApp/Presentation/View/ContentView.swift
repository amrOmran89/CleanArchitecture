//
//  ContentView.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: BookViewModel
    
    init() {
        self._viewModel = StateObject(wrappedValue: BookViewModel(useCase: BookUseCase(repository: BookRepository(dataSource: BookDataSource()))))
    }
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.books) { book in
                VStack(alignment: .leading) {
                    Text(book.title)
                        .fontWeight(.semibold)
                    Text(book.author)
                        .fontWeight(.light)
                }
                .padding(.bottom, 8)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding()
        .task {
            await viewModel.getBooks()
        }
    }
}

#Preview {
    ContentView()
}
