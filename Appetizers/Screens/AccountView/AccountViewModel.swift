//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 22.07.24.
//

import SwiftUI


final class AccountViewModel: ObservableObject {
    
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    @AppStorage("user") private var userData: Data?
    
    var isValidForm: Bool {
        
        guard !user.firstname.isEmpty && !user.lastname.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    
    func saveChanges() {
        guard isValidForm else { return }
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSucces
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    
    func retrieveUser() {
        guard let userData else {
            return
        }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
