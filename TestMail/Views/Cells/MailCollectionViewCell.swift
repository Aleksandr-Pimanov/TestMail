//
//  MailCollectionViewCell.swift
//  TestMail
//
//  Created by Aleksandr Pimanov on 12.08.2022.
//

import Foundation
import UIKit

class MailCollectionViewCell: UICollectionViewCell {
    
    private let domainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic New", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigurationForViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfigurationForViews() {
        contentView.backgroundColor = .white
        contentView.alpha = 0.5
        contentView.layer.cornerRadius = 10
        
        addSubview(domainLabel)
    }
}

extension MailCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            domainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            domainLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}