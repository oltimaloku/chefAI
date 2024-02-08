//
//  FoodItem.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

struct FoodItem: Codable, Identifiable {
    let id: UUID
    var name: String
    var quantity: Int
    var unit: String
    var expirationDate: Date?
    var category: Category
    var purchaseDate: Date
    var location: StorageLocation
    
    enum Category: String, CaseIterable, Codable {
        case dairy, fruits, vegetables, meats, grains, beverages, frozen, snacks
    }
    
    enum StorageLocation: String, CaseIterable, Codable {
        case fridge, freezer, pantry, cupboard
    }
}
