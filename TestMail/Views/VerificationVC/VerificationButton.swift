//
//  VerificationButton.swift
//  TestMail
//
//  Created by Aleksandr Pimanov on 12.08.2022.
//

import Foundation
import UIKit

class VerificationButton: UIButton {
    
    public var isValid = false {
        didSet {
            if self.isValid {
                setValidSettings()
            } else {
                setNotValidSettings()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   private func setConfiguration() {
       backgroundColor = #colorLiteral(red: 0.9564198852, green: 0.9451850057, blue: 0.8892086744, alpha: 1)
       setTitle("Verification button", for: .normal)
       let color = #colorLiteral(red: 0.2789022923, green: 0.2789022923, blue: 0.2789022923, alpha: 1)
       setTitleColor(color, for: .normal)
       layer.cornerRadius = 10
       titleLabel?.font = UIFont(name: "Avenir Book", size: 17)
       isEnabled = false
       alpha = 0.5
       translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSettings() {
        isEnabled = false
        alpha = 0.5
    }
    
    private func setValidSettings() {
        isEnabled = true
        alpha = 1
    }
    
    func setDefaultSettings() {
        setConfiguration()
    }
}
