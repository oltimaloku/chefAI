//
//  GenerateRecipes.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-03-01.
//

import Foundation

struct OpenAIRequest: Codable {
    let prompt: String
    let temperature: Double
    let maxTokens: Int
    let topP: Double
    let frequencyPenalty: Double
    let presencePenalty: Double
}

struct OpenAIResponse: Codable {
    struct Choice: Codable {
        let text: String
    }
    let choices: [Choice]
}

class RecipeGenerator {
    
    var inventoryViewModel: InventoryViewModel // Assuming you have this instance ready
    
    init(inventoryViewModel: InventoryViewModel) {
        self.inventoryViewModel = inventoryViewModel
    }
    
    func generateRecipes(completion: @escaping (Result<String, Error>) -> Void) {
        let foodItems = inventoryViewModel.getInventory.map { $0.name }.joined(separator: ", ")
        let prompt = "Given the following ingredients: [list of ingredients]. Please create a few recipes that utilize these ingredients. For each recipe, provide a name, list the required ingredients from the provided list, and give step-by-step cooking instructions. Format your response as follows: 1. Recipe Name: 2. Ingredients: - Ingredient 1 - Ingredient 2 ... 3. Instructions: Step 1. Step 2. ..."

        
        let requestBody = OpenAIRequest(prompt: prompt, temperature: 0.7, maxTokens: 1000, topP: 1.0, frequencyPenalty: 0.0, presencePenalty: 0.0)
        
        guard let url = URL(string: "https://api.openai.com/v1/engines/davinci/completions") else {
            completion(.failure(NSError(domain: "", code: 1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer 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", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let jsonData = try JSONEncoder().encode(requestBody)
            request.httpBody = jsonData
        } catch {
            completion(.failure(error))
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 2, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                return
            }
            
            let responseString = String(data: data, encoding: .utf8)
               print("Raw response: \(responseString ?? "No response body")")
            
            do {
                let decodedResponse = try JSONDecoder().decode(OpenAIResponse.self, from: data)
                if let text = decodedResponse.choices.first?.text {
                    completion(.success(text))
                } else {
                    completion(.failure(NSError(domain: "", code: 3, userInfo: [NSLocalizedDescriptionKey: "Invalid response format"])))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
