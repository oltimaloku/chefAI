//
//  OpenAIService.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-03-01.
//

import Foundation

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
}

class OpenAIService {
    
    static let shared = OpenAIService()
    
    private init () {}
    
    private func generateURLRequest(httpMethod: HTTPMethod, content: String, ingredients: [String]) throws -> URLRequest {
        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
            throw URLError(.badURL)
        }
        
        var urlRequest = URLRequest(url: url)
        
        // Method
        urlRequest.httpMethod = httpMethod.rawValue
        
        // Header
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("Bearer \(Secrets.openAIApiKey)", forHTTPHeaderField: "Authorization")
        
        // Body
        
        
        
        let systemMessage = GPTMessage(role: "user", content: "You are a recipe maker")
        let ingredientsList = ingredients.joined(separator: ", ")
        let customContent = "Given the following ingredients: \(ingredientsList). \(content)"
        let message = GPTMessage(role: "user", content: customContent)
        
        let title = GPTFunctionProperty(type: "string", description: "The title of the recipe")
        let ingredients = GPTFunctionProperty(type: "string", description: "The ingredients used")
        let instructions = GPTFunctionProperty(type: "string", description: "Instructions for how to make the meal")
        let time = GPTFunctionProperty(type: "string", description: "The time it takes to complete the recipe")
        
        let params: [String: GPTFunctionProperty] = [
            "title": title,
            "ingredients": ingredients,
            "instructions": instructions,
            "time": time,
        ]
        
        let functionParams = GPTFunctionParameter(type: "object", properties: params, required: ["title", "ingredients", "instructions", "time"])
        let function = GPTFunction(name: "get_recipes", description: "Get recipes for the given ingredients", parameters: functionParams)
        let payload = GPTChatPayload(model: "gpt-3.5-turbo", messages: [systemMessage, message], functions: [function])
        
        let jsonData = try JSONEncoder().encode(payload)
        
        urlRequest.httpBody = jsonData
        
        return urlRequest
        
    }
    
    func sendPromptToGPT(message: String, ingredients: [String]) async throws {
        let urlRequest = try generateURLRequest(httpMethod: .post, content: message, ingredients: ingredients)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        print(String(data: data, encoding: .utf8)!)
    }
}

struct GPTChatPayload: Encodable {
    let model: String
    let messages: [GPTMessage]
    let functions: [GPTFunction]
}

struct GPTMessage: Encodable {
    let role: String
    let content: String
}

struct GPTFunction: Encodable {
    let name: String
    let description: String
    let parameters: GPTFunctionParameter
}

struct GPTFunctionParameter: Encodable {
    let type: String
    let properties: [String: GPTFunctionProperty]?
    let required: [String]?
}

struct GPTFunctionProperty: Encodable {
    let type: String
    let description: String
}
