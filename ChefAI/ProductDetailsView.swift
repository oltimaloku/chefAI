//
//  ProductDetailsView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-11.
//

import SwiftUI

struct ProductDetailsView: View {
    @Binding var scanResult: String

    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
            }
            .navigationTitle(scanResult)
            .navigationBarTitleDisplayMode(.large) 
        }
    }
}

// Preview
struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(scanResult: .constant("Sample Scan Result"))
    }
}

