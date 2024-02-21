//
//  Recipe.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import Foundation

struct Recipe: Identifiable {
    let id: String
    var name: String
    var ingredients: [FoodItem]
    var instructions: String
    var time: String
}
