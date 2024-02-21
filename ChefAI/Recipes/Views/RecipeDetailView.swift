//
//  RecipeDetailView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    var body: some View {
        Text(recipe.name)
    }
}

#Preview {
    RecipeDetailView(recipe: MockData.recipes[0])
}
