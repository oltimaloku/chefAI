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
        VStack {
            Text(recipe.name).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Instrutions")
                Text(recipe.instructions)
            }
            
        }
        
        
    }
}

#Preview {
    RecipeDetailView(recipe: MockData.recipes[0])
}
