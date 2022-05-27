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
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        
    }
    
    func setupConstraint() {
        
    }
    
    func bind() {
        
    }
    
    
    
}
