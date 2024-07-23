//
//  OrderView.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 17.06.24.
//

import SwiftUI

struct OrderView: View {
    
    //@State private var orderItems = MockData.orderItems
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                                .listRowSeparator(.hidden)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(InsetGroupedListStyle())
                    
                    
                    Button {
                        print("place Order")
                    } label: {
                        //APButton(title: "$\(order.totalPrice, specifier:"%.2f") - place order")
                        Text("$\(order.totalPrice, specifier:"%.2f") - place order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 20)
                    
                }
                if order.items.isEmpty {
                    EmptyState(title: "no orders", image: "empty-order")
                }
            }
            .navigationTitle("📋 Order")
        }
    }
    
    
}

#Preview {
    OrderView()
}
