//
//  BaseVC.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import UIKit
import SnapKit

class BaseVC: UIViewController {
    
    
    deinit {
        debugPrint("\(String(describing: self)) deinited")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setup()
        setupConstraint()
        bind()
    }
    
    func setup() {
        
    }
    
    func setupConstraint() {
        
    }
    
    func bind() {
        
    }
    
    
    
}
