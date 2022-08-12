//
//  StatusLabel.swift
//  TestMail
//
//  Created by Alexandr Pimanov on 11.08.2022.
//

import Foundation
import UIKit

class StatusLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfiguration() {
        text = "Check your mail"
        textColor = #colorLiteral(red: 0.9450980392, green: 0.9333333333, blue: 0.862745098, alpha: 1)
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
