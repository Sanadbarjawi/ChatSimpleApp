//
//  Customlabel.swift
//  ChatSimpleApp
//
//  Created by Sanad Barjawi on 9/12/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import Foundation
import UIKit
class DateHeaderLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        backgroundColor = UIColor.black
        textColor = UIColor.white
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont.boldSystemFont(ofSize: 14)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //kk
    }
    
    override var intrinsicContentSize: CGSize {
        let originalContentSize = super.intrinsicContentSize
        let height = originalContentSize.height + 12
        layer.cornerRadius = height / 2
        layer.masksToBounds = true
        return CGSize(width: originalContentSize.width + 20, height: height)
    }

}
