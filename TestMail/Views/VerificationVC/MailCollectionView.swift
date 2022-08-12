//
//  MailCollectionView.swift
//  TestMail
//
//  Created by Aleksandr Pimanov on 12.08.2022.
//

import Foundation
import UIKit

protocol SelectProposedMailProtocol: AnyObject {
    func selectProposedMail(indexPath: IndexPath)
}

enum IdCell: String {
    case idMailCell
}

class MailCollectionView: UICollectionView {
    
    weak var selectMailDelegat: SelectProposedMailProtocol?
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        setConfiguration()
        register(MailCollectionViewCell.self,
                 forCellWithReuseIdentifier: IdCell.idMailCell.rawValue)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConfiguration() {
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        delegate = self
    }
}

//MARK: - UICollectionViewDelegate

extension MailCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectMailDelegat?.selectProposedMail(indexPath: indexPath)
    }
}

extension MailCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 2 - 5, height: 40)
    }
}
