//
//  ViewController.swift
//  PassDataBackNoSB
//
//  Created by Josh R on 11/14/19.
//  Copyright © 2019 Josh R. All rights reserved.
//

import UIKit

class VC1: UIViewController {
    
    lazy var textLbl: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        label.backgroundColor = .red
        label.textColor = .white
        
        return label
    }()
    
    lazy var nextBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.backgroundColor = .blue
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        button.giveRoundCorners()
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        self.view.addSubview(textLbl)
        self.view.addSubview(nextBtn)
        setBtnConstraints()
        
        nextBtn.addTarget(self, action: #selector(nextBtnTapped), for: .touchUpInside)
    }
    
    @objc func nextBtnTapped() {
        let vc2 = VC2()
        vc2.delegate = self
        self.navigationController?.pushViewController(vc2, animated: true)
    }   
    
    private func setBtnConstraints() {
        textLbl.translatesAutoresizingMaskIntoConstraints = false
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
    
        textLbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        textLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textLbl.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        nextBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30).isActive = true
        nextBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        nextBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    
}

extension VC1: PassDataBackDelegate {
    func pass(_ data: String) {
        textLbl.text = data
    }
}

