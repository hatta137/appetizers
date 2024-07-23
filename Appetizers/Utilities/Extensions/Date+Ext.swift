//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Hendrik Lendeckel on 23.07.24.
//

import Foundation


extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    
    var onHundretTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
