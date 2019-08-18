//
//  HeaderCell.swift
//  Reade
//
//  Created by Vishwa Shankar on 8/11/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit

class HeaderCell: UICollectionViewCell{
    
    let textlabel: UILabel = {
        let label = UILabel()
        label.text = "News Feed"
        label.font = UIFont.boldSystemFont(ofSize: 16) 
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addSubview(textlabel)
        //textlabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        textlabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textlabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        textlabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        textlabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        textlabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
