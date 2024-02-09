//
//  BarcodeLookupService.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

struct BarcodeLookupService {
    
    func fetchProductDetails(barcode: String) {
        let urlString = "https://world.openfoodfacts.org/api/v0/product/\(barcode).json"
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // If there's an error in the web request, print it to the console
                print("Error: \(error)")
                return
            }

            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                if let data = data {
                    // If we receive data, print it as a string for debugging
                    let dataString = String(decoding: data, as: UTF8.self)
                    print(dataString)
                } else {
                    print("No data received")
                }
            } else {
                print("Invalid response from server")
            }
        }
        task.resume()
    }

}

