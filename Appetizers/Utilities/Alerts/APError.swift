//
//  APError.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
