//
//  ViewController.swift
//  TestMail
//
//  Created by Aleksandr Pimanov on 11.08.2022.
//

import UIKit

class VerificationViewController: UIViewController {
    
    private var backgroundImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "back")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setDelegated()
        setConstraints()
    }

    private func setupViews() {
        view.addSubview(backgroundImageView)
    }

    private func setDelegated() {
        NSLayoutConstraint.activate([
            backgroundImageView 
        ])
    }
}

extension VerificationViewController {
    private func setConstraints() {
        
    }
}
