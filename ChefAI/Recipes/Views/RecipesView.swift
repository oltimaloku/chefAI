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
    @EnvironmentObject var inventoryViewModel: InventoryViewModel
    
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
                    // Retrieve the list of ingredient names from the InventoryViewModel
                        let ingredients = self.inventoryViewModel.getInventory.map { $0.name }
                        
                        // Call your service, adjust `sendPromptToGPT` as needed to accept ingredients
                        Task {
                            do {
                                // Assuming you've adjusted `sendPromptToGPT` to accept a list of ingredients
                                try await OpenAIService.shared.sendPromptToGPT(message: "Please create a few recipes that utilize these ingredients. Include a name, required ingredients, and step-by-step instructions for each recipe.", ingredients: ingredients)
                            } catch {
                                print("Error generating recipes: \(error)")
                            }
                        }
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

