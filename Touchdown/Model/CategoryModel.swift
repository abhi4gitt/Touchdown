//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Abhishek on 15/04/25.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
