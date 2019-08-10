//
//  NewsCell.swift
//  Reade
//
//  Created by Vishwa Shankar on 8/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    
    @IBOutlet var imageNewsCell: UIImageView!
    
    @IBOutlet var newsTitle: UILabel!
    @IBOutlet var newsDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model:NewsModel){
        //imageNewsCell.image = model.image
        newsTitle.text = model.title
        newsDate.text = model.date
    }
    
    func setupViews(){
        backgroundColor = .yellow
        addSubview(newsTitle)
        newsTitle.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        newsTitle.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        newsTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        newsTitle.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }

}
