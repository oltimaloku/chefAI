//
//  FoodItem.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

struct FoodItem: Codable, Identifiable {
    let id: String
    var name: String
    var product: ProductClass?
    var quantity: Int
    var unit: Unit
    var expirationDate: Date
    var category: Category
    var purchaseDate: Date
    var location: StorageLocation
    
    enum Category: String, CaseIterable, Codable {
        case dairy, fruits, vegetables, meats, grains, beverages, frozen, snacks, protein
        
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
            case .protein:
                return "icon_protein"
            }
        }
    }
    
    enum Unit: String, CaseIterable, Codable {
        case piece = "pc"
        case pack = "pack"
        case box = "box"
        case gram = "g"
        case kilogram = "kg"
        case pound = "lb"
        case liter = "L"
        case milliliter = "mL"
        case cup = "cup"
        case tablespoon = "tbsp"
        case teaspoon = "tsp"
        case inch = "in"
        case centimeter = "cm"
        case unit = "unit"
        
        var displayName: String {
            switch self {
            case .piece:
                return "Piece"
            case .pack:
                return "Pack"
            case .box:
                return "Box"
            case .gram:
                return "Gram"
            case .kilogram:
                return "Kilogram"
            case .pound:
                return "Pound"
            case .liter:
                return "Liter"
            case .milliliter:
                return "Milliliter"
            case .cup:
                return "Cup"
            case .tablespoon:
                return "Tablespoon"
            case .teaspoon:
                return "Teaspoon"
            case .inch:
                return "Inch"
            case .centimeter:
                return "Centimeter"
            case .unit:
                return "unit"
            
            }
        }
    }

    
    enum StorageLocation: String, CaseIterable, Codable {
        case fridge, freezer, pantry, cupboard
    }
}
