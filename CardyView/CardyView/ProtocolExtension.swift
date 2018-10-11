//
//  ProtocolExtension.swift
//  CardyView
//
//  Created by 박길남 on 11/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation

extension ReusableView where Self: UIView {
    internal static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension NibLoadableView where Self: UIView {
    internal static var NibName: String {
        return String(describing: self)
    }
}
