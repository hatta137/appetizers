//
//  EmptyState.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 23.07.24.
//

import SwiftUI

struct EmptyState: View {
    
    let title: String
    let image: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .padding(.bottom, 30)
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50.0)
        }
    }
}

#Preview {
    EmptyState(title: "Empty Order", image: "empty-order")
}
