//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 23.07.24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
    
}
