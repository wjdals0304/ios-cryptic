//
//  Asset.Cell.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import UIKit

extension Asset {
    
    final class Cell : UICollectionViewCell {
        
        static let identifier = String(describing: type(of: self))
        
        let titleLabel = UILabel()
        let symbolLabel = UILabel()
        let priceLabel = UILabel()
        let marketCapLabel = UILabel()
        
        let priceUsd = UILabel()
        let changePercent24Hr = UILabel()
        let marketCapUsd = UILabel()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
            setupConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setup() {
            
            [
                titleLabel,
                symbolLabel,
                priceLabel,
                marketCapLabel,
                priceUsd,
                changePercent24Hr,
                marketCapUsd
            ].forEach { addSubview($0) }

        }
        
        func setupConstraints() {
            titleLabel.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(5)
                make.centerX.equalToSuperview()
            }
            symbolLabel.snp.makeConstraints { make in
                make.leading.equalTo(titleLabel.snp.trailing).offset(10)
                make.bottom.equalTo(titleLabel.snp.bottom)
            }
            priceLabel.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(60)
                make.leading.equalToSuperview().offset(10)
            }
            marketCapLabel.snp.makeConstraints { make in
                make.top.equalTo(priceLabel.snp.bottom).offset(40)
                make.leading.equalTo(priceLabel.snp.leading)
            }
            priceUsd.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(50)
                make.trailing.equalToSuperview().inset(20)
            }
            changePercent24Hr.snp.makeConstraints { make in
                make.top.equalTo(priceUsd.snp.bottom).offset(5)
                make.trailing.equalTo(priceUsd.snp.trailing)
            }
            marketCapUsd.snp.makeConstraints { make in
                make.bottom.equalTo(marketCapLabel.snp.bottom)
                make.trailing.equalTo(priceUsd.snp.trailing)
            }
            
        }
        
        func setupValue( ) {
            
            layer.cornerRadius = 12.0
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.1
            layer.shadowRadius = 10
            backgroundColor = .systemBackground
                    
            titleLabel.text = "Bitcoin"
            symbolLabel.text = "btc"
            priceLabel.text = "Price"
            marketCapLabel.text = "Market cap"
            
            priceUsd.text = "299"
            changePercent24Hr.text = "1%"
            
            marketCapUsd.text = "22222"
            
        }
        
    }
    
    
    
}


