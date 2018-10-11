//
//  CardyViewCellExtension.swift
//  CardyView
//
//  Created by 박길남 on 11/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    public func initCardyView(selectionStyle style:UITableViewCellSelectionStyle = .none, backgroundColor color:UIColor = .clear, shadowOffset:CGSize = CGSize(width: 0, height: 0), shadowColor:UIColor = .black, shadowOpacity:Float = 0.3, shadowRadius:CGFloat = 3) {
        selectionStyle = style
        backgroundColor = color
        
        contentView.layer.masksToBounds = false
        contentView.layer.shadowOffset = shadowOffset
        contentView.layer.shadowColor = shadowColor.cgColor
        contentView.layer.shadowOpacity = shadowOpacity
        contentView.layer.shadowRadius = shadowRadius
    }
    
    public static func register(tableView: UITableView) {
        let Nib = UINib(nibName: self.NibName, bundle: nil)
        tableView.register(Nib, forCellReuseIdentifier: self.reuseIdentifier)
    }
    
    public static func dequeueReusableCell(tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier) else {
            fatalError("Error! \(self.reuseIdentifier)")
        }
        
        return cell
    }
}

extension UITableViewCell: ReusableView {
    
}

extension UITableViewCell: NibLoadableView {
    
}



