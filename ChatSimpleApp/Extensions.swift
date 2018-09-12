//
//  Extensions.swift
//  ChatSimpleApp
//
//  Created by Sanad Barjawi on 9/12/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import Foundation
extension Date {
    static func dateFromCustomString(_ customString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.date(from: customString) ?? Date()
    }
}
