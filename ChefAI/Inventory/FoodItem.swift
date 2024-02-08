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
        
        var iconName: String {
            switch self {
            case .dairy:
                return "icon_dairy"
            case .fruits:
                return "icon_fruits"
            case .vegetables:
                return "icon_vegetables"
            case .meats:
                return "icon_meats"
            case .grains:
                return "icon_grains"
            case .beverages:
                return "icon_beverages"
            case .frozen:
                return "icon_frozen"
            case .snacks:
                return "icon_snacks"
            }
        }
    }
    
    enum StorageLocation: String, CaseIterable, Codable {
        case fridge, freezer, pantry, cupboard
    }
}
