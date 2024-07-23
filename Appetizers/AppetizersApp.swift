//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTab().environmentObject(order)
        }
    }
}
