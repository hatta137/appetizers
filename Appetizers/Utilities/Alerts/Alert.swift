//
//  Alert.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 22.07.24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"), message: Text("The data recived from the server was invalid."), dismissButton: .default(Text("OK")))
    static let invalidResponse  = AlertItem(title: Text("Server Error"), message: Text("Invalid Response from the server, try later."), dismissButton: .default(Text("OK")))
    static let invalidURL       = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server."), dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time."), dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerst
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in the form have been filled out."), dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("OK")))
    static let userSaveSucces = AlertItem(title: Text("Profile saved"), message: Text("Your Profile Information saved successfully"), dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile"), dismissButton: .default(Text("OK")))
    static let connectionError = AlertItem(title: Text("Connection Error"), message: Text("Unable to do the reques on time. Check your internet connection!"), dismissButton: .default(Text("OK")))
    

}
