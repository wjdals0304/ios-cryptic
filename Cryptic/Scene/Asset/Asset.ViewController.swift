//
//  Asset.ViewController.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import UIKit

extension Asset {
    
    final class ViewController:BaseVC {
        
        private lazy var collectionView: UICollectionView = {
           let layout = UICollectionViewFlowLayout()
            layout.estimatedItemSize = CGSize(width: view.frame.width - 32.0 , height: 160)
            layout.sectionInset = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
            layout.scrollDirection = .vertical

            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.backgroundColor = .systemBackground
            collectionView.register(Asset.Cell.self, forCellWithReuseIdentifier: Asset.Cell.identifier)
            collectionView.dataSource = self
            collectionView.backgroundColor = UIColor.appBackground
            return collectionView
            
        }()
        
        override func setup() {
            super.setup()
            view.addSubview(collectionView)
        }
        
        override func bind() {
            super.bind()
        }
        
        override func setupConstraint() {
            super.setupConstraint()
            collectionView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }
    }
    
}


extension Asset.ViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2 
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Asset.Cell.identifier, for: indexPath) as? Asset.Cell

        cell?.setupValue()
    
        return cell ?? UICollectionViewCell()

    }
    
    
}
