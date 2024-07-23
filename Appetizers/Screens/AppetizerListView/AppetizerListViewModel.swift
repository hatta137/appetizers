//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import SwiftUI

@MainActor final class AppeizerListViewModel: ObservableObject {
    
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    //    func getAppetizers() {
    //        NetworkManager.shared.getAppetizer { result in
    //            DispatchQueue.main.async {
    //                switch result {
    //                case .success(let appetizers):
    //                    self.appetizers = appetizers
    //
    //                case .failure(let error):
    //
    //                    switch error {
    //
    //                    case .invalidData:
    //                        self.alertItem = AlertContext.invalidData
    //
    //                    case .invalidURL:
    //                        self.alertItem = AlertContext.invalidURL
    //
    //                    case .invalidResponse:
    //                        self.alertItem = AlertContext.invalidResponse
    //
    //                    case .unableToComplete:
    //                        self.alertItem = AlertContext.unableToComplete
    //                    }
    //                }
    //            }
    //        }
    //    }
    
    func getAppetizers() {
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizer()
            } catch {
                alertItem = AlertContext.connectionError
            }
        }
    }
    
}
