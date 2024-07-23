//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: "https://sitechecker.pro/wp-content/uploads/2023/05/URL-meaning.jpg")
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 90)
//                .cornerRadius(8)
            
            // no caching in AsyncImage --> for caching use old method
            AsyncImage(url: URL(string: "https://sitechecker.pro/wp-content/uploads/2023/05/URL-meaning.jpg")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 90)
                    .cornerRadius(8)
                
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 90)
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("€\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
