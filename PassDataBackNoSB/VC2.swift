//
//  VC2.swift
//  PassDataBackNoSB
//
//  Created by Josh R on 11/14/19.
//  Copyright © 2019 Josh R. All rights reserved.
//

import UIKit

protocol PassDataBackDelegate: class {
    func pass(_ data: String)
}

class VC2: UIViewController {
    
    let textToPassBack = "Data Passed Back"
    weak var delegate: PassDataBackDelegate?
    
    lazy var doneBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.backgroundColor = .blue
        button.setTitle("Done", for: .normal)
        button.giveRoundCorners()
        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        self.view.addSubview(doneBtn)
        setBtnConstraints()
        
        doneBtn.addTarget(self, action: #selector(donBtnTapped), for: .touchUpInside)
    }
    
    @objc func donBtnTapped() {
        delegate?.pass(textToPassBack)
        self.navigationController?.popViewController(animated: true)
    }
    
    private func setBtnConstraints() {
        doneBtn.translatesAutoresizingMaskIntoConstraints = false
    
        doneBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        doneBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        doneBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        doneBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    deinit {
        print("VC2 deinit")
    }
    

}
