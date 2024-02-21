//
//  RecipesView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI
// TODO: Consider adding this to inventory page with a top level toggle/switcher that allows you to switch between food itesm and recipes 
struct RecipesView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    @State private var showingModal = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(recipesViewModel.getRecipes) {
                        recipe in RecipeComponent(recipe: recipe)
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
                }
                }
            }
        }
}

#Preview {
    RecipesView()
}
