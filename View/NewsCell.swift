//
//  NewsCell.swift
//  Reade
//
//  Created by Vishwa Shankar on 8/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    public func configure(with model:NewsModel){
        newsTitle.text = model.title
        newsDate.text = model.date
        setupCellViews()
    }
    
    let imageNewsCell: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .brown
        return image
    }()
    
    let newsTitle: UILabel = {
        let textView = UILabel()
        textView.text = "NEW DEVELOPER COURSE iOS"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .orange
        return textView
    }()
    
    let newsDate: UILabel = {
        let textView = UILabel()
        textView.text = "12/12/12"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .green
        return textView
    }()
    
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.cyan.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(UIColor.blue, for: .normal)
        return button
    }()
    
    let sourceTextView: UILabel = {
        let textView = UILabel()
        textView.text = "FakeNews.io"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.textColor = .black
        textView.backgroundColor = .white
        return textView
    }()
    
    
    func setupCellViews(){
        backgroundColor = .yellow
        addSubview(newsTitle)
        addSubview(imageNewsCell)
        addSubview(followButton)
        addSubview(sourceTextView)
        addSubview(newsDate)
       
        imageNewsCell.backgroundColor = .brown
        imageNewsCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        imageNewsCell.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        imageNewsCell.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageNewsCell.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageNewsCell.translatesAutoresizingMaskIntoConstraints = false
        
        
        sourceTextView.topAnchor.constraint(equalTo: imageNewsCell.topAnchor).isActive = true
        sourceTextView.leftAnchor.constraint(equalTo: imageNewsCell.rightAnchor, constant: 4).isActive = true
        sourceTextView.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -2).isActive = true
        sourceTextView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        sourceTextView.translatesAutoresizingMaskIntoConstraints = false
        
        
        followButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        followButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        followButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        newsDate.topAnchor.constraint(equalTo: sourceTextView.bottomAnchor, constant: 4).isActive = true
        newsDate.leftAnchor.constraint(equalTo: sourceTextView.leftAnchor).isActive = true
        newsDate.rightAnchor.constraint(equalTo: sourceTextView.rightAnchor).isActive = true
        newsDate.heightAnchor.constraint(equalToConstant: 30).isActive = true
        newsDate.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        newsTitle.topAnchor.constraint(equalToSystemSpacingBelow: newsDate.bottomAnchor, multiplier: 1).isActive = true
        newsTitle.rightAnchor.constraint(equalTo: followButton.rightAnchor).isActive = true
        newsTitle.leftAnchor.constraint(equalTo: imageNewsCell.leftAnchor, constant:  0).isActive = true
        newsTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        newsTitle.translatesAutoresizingMaskIntoConstraints = false
        
        
    }

}
