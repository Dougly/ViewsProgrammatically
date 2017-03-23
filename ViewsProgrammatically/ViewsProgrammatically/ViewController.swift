//
//  ViewController.swift
//  ViewsProgrammatically
//
//  Created by Douglas Galante on 3/16/17.
//  Copyright © 2017 Dougly. All rights reserved.
//

import UIKit

// let frame = self.view.frame
//let layout = UICollectionViewFlowLayout()

//frame: frame, collectionViewLayout: layout


class ViewController: UIViewController {

    var headerView: UIView!
    var titleLabel: UILabel!
    var numbersCollectionView: UICollectionView!
    let numbersCollectionViewDelegateAndDataSource = NumbersCollectionViewDelegateAndDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaderAndTitleLabel()
        
        let frame = self.view.frame
        let layout = UICollectionViewFlowLayout()
        numbersCollectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.view.addSubview(numbersCollectionView)
        
        numbersCollectionView.translatesAutoresizingMaskIntoConstraints = false
        numbersCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        numbersCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        numbersCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        numbersCollectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    
    
        numbersCollectionView.register(NumbersCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        numbersCollectionView.delegate = numbersCollectionViewDelegateAndDataSource
        numbersCollectionView.dataSource = numbersCollectionViewDelegateAndDataSource
    }
    
    
    func setupHeaderAndTitleLabel() {
        // Initialize views and add them to the ViewController's view
        headerView = UIView()
        headerView.backgroundColor = .red
        self.view.addSubview(headerView)
        
        titleLabel = UILabel()
        titleLabel.text = "NUMBERS"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 20)
        headerView.addSubview(titleLabel)
        
        // Set position of views using constraints
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.4).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.5).isActive = true
    }
    
}





