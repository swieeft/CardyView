//
//  CardyViewExtension.swift
//  CardyView
//
//  Created by 박길남 on 11/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    public func initialCardyView(backgroundColor:UIColor = UIColor.clear, spearatorStyle cellSpearatorStyle:UITableViewCellSeparatorStyle = .none) {
        self.backgroundColor = backgroundColor
        self.separatorStyle = cellSpearatorStyle
    }
    
    public func register<T:UITableViewCell>(_: T.Type, bundle:Bundle? = nil) {
        let nib = UINib(nibName: T.NibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    public func dequeueReusableCell<T:UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error! \(T.reuseIdentifier)")
        }
        
        return cell
    }
}

