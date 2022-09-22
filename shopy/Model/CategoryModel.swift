//
//  CategoryModel.swift
//  shopy
//
//  Created by Virginia Hendras on 20/09/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
