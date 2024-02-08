//
//  SwiftUIView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import SwiftUI

struct FoodItemComponent: View {
    var name: String
    var quantity: String
    
    var body: some View {
        NavigationLink(destination:  FoodItemDetailView(itemName: name)) {
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(5)
                    
                    Text(name)
                        .foregroundColor(.primary)
                        .font(.headline)
                }
                
                Spacer()
                
                Text(quantity)
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

// Preview
struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemComponent(name: "Apples", quantity: "2 lbs")
            .previewLayout(.sizeThatFits)
    }
}
