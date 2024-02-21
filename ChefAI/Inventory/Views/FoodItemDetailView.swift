//
//  FoodItemDetailView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import SwiftUI

struct FoodItemDetailView: View {
    var item: FoodItem
    
    var body: some View {
        ScrollView {
            VStack {
                
                Image(systemName: "photo.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: 200)
                    .clipped()
                    .cornerRadius(5)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                // TODO: Add spacing in between these elements
                FoodItemForm().frame(width: .infinity, height: 200)
        
                Text("Nutriments").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}

#Preview {
    FoodItemDetailView(item: MockData.foodItems[0])
}

