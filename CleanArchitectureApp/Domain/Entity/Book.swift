//
//  Book.swift
//  CleanArchitectureApp
//
//  Created by Amr Omran on 27.02.25.
//

import Foundation

struct Book: Identifiable, Codable {
    let id: Int
    let title: String
    let author: String
}
