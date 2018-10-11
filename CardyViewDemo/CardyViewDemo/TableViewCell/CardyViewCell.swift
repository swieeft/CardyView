//
//  CardyViewCell.swift
//  CardyViewDemo
//
//  Created by 박길남 on 2018. 7. 17..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import UIKit

class CardyViewCell: UITableViewCell {

    @IBOutlet weak var cellBackgroundView: UIView!
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        initCardyView(selectionStyle: .none, backgroundColor: .clear, shadowOffset: CGSize(width: 0, height: 0), shadowColor: .black, shadowOpacity: 0.3, shadowRadius: 3)

        cellBackgroundView.layer.cornerRadius = 10
        cellBackgroundView.layer.masksToBounds = true
        
        iconImageView.clipsToBounds = true
        iconImageView.layer.cornerRadius = 0.5 * iconImageView.frame.size.width
    }

    static func isType() -> Bool {
        return true
    }
    
    func setData(data:CellData) {
        if let icon = data.icon {
            iconImageView.image = icon
        }
        
        if let title = data.title {
            titleLabel.text = title
        }
        
        if let contents = data.contents {
            contentsImageView.image = contents
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
