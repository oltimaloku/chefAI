//
//  RecipesView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI
// TODO: Consider adding this to inventory page with a top level toggle/switcher that allows you to switch between food items and recipes

struct RecipesView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    @State private var showingModal = false
    @State private var showingGenerateRecipesModal = false

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(recipesViewModel.getRecipes) { recipe in
                            RecipeComponent(recipe: recipe)
                        }
                    }
                }
                .navigationBarTitle("Food Items", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    self.showingModal = true
                }) {
                    Image(systemName: "plus")
                })
                .sheet(isPresented: $showingModal) {
                    AddFoodItemModal()
                }
                .sheet(isPresented: $showingGenerateRecipesModal) {
                    GenerateRecipesModal()
                }

                Spacer() // This will push the button to the bottom
                
                Button(action: {
                    self.showingGenerateRecipesModal = true
                }) {
                    Text("Generate Recipes")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding(.bottom, 8) // Adjust padding as needed
            }
        }
    }
}

#Preview {
    RecipesView()
}

