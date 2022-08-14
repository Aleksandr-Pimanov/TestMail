//
//  String + Extensions.swift
//  TestMail
//
//  Created by Aleksandr Pimanov on 14.08.2022.
//

import Foundation

extension String {
    
    func isValid() -> Bool {
        let format = "SELF MATCHES %@"
        let regEx = "[a-zA-Z0-9._]+@[a-zA-Z]+\\.[a-zA-Z]{2,}"
        return NSPredicate(format: format, regEx).evaluate(with: self)
    }
}

