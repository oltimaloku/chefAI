//
//  RecipesViewModel.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published var recipeName: String = ""
    @Published var ingredients: [FoodItem] = []
    @Published var instructions: String = ""
    @Published var time: String = ""
    
    @Published private var recipes: [Recipe] = MockData.recipes
    private var nextId: Int = 2
    
    var getRecipes: [Recipe] {
        return recipes
    }
    
    func addRecipe() {
        var newRecipe = Recipe(id: String(nextId), name: recipeName, ingredients: ingredients, instructions: instructions, time: time)
        recipes.append(newRecipe)
    }
    
}
