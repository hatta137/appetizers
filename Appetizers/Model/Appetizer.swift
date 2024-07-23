//
//  Appetizer.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import Foundation

// Decodeable decodes json into our object
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer  = Appetizer(id: 001, name: "Test Appetizer1", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer1 = Appetizer(id: 001, name: "Test Appetizer1", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer2 = Appetizer(id: 002, name: "Test Appetizer2", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer3 = Appetizer(id: 003, name: "Test Appetizer3", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer4 = Appetizer(id: 004, name: "Test Appetizer4", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let sampleAppetizer5 = Appetizer(id: 005, name: "Test Appetizer5", description: "Test Appetizer description", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItems = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3, sampleAppetizer4, sampleAppetizer5]
}
