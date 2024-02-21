//
//  RecipeComponent.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import SwiftUI

struct RecipeComponent: View {
    var recipe: Recipe
    var body: some View {
        NavigationLink(destination:  RecipeDetailView(recipe: recipe)) {
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(5)
                    
                    Text(recipe.name)
                        .foregroundColor(.primary)
                        .font(.headline)
                }
                
                Spacer()
                
                Text(String(recipe.time))
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                Text("Minutes")
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
        }
    }
}

#Preview {
    RecipeComponent(recipe: MockData.recipes[0])
}
