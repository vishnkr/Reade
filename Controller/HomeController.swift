//
//  HomeController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/27/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//
import UIKit



class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let cellId = "newsId"
    let headerId = "headerId"
    let footerId = "footerId"
    let news = [NewsModel(title: "a",content: "a",date: "12-july"),NewsModel(title: "abc",content: "asdfg",date: "a"),NewsModel(title: "a123",content: "b1234",date: "1967"),NewsModel(title: "test title",content: "test content",date: "oct-20")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView?.register(UINib.init(nibName: "NewsCell", bundle: nil), forCellWithReuseIdentifier: "NewsCell")
        
        //collectionView?.register(ContentCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerId)
 
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as! NewsCell
        cell.configure(with: news[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height:50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
            header.backgroundColor = .red
            return header
        }
        else{
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerId, for: indexPath)
            footer.backgroundColor = .cyan
            return footer
        }
    }
    
}


