//
//  CellData.swift
//  CardyViewDemo
//
//  Created by 박길남 on 11/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

struct CellData {
    var icon:UIImage?
    var title:String?
    var contents:UIImage?
    
    init(icon:UIImage? = nil, title:String? = nil, contents:UIImage? = nil) {
        self.icon = icon
        self.title = title
        self.contents = contents
    }
}

