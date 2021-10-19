//
//  PrimeiraCollectionViewCell.swift
//  DesafioDeRevisaoTabbar
//
//  Created by Maycon Anderson on 18/10/21.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var locationUIImageView: UIImageView!
    @IBOutlet weak var imageUIImageView: UIImageView!
    
    func setup(with location: PrimeiraViewController) {
        locationUIImageView.image = UIImage(named: "loc01.jpg")
        imageUIImageView.image = UIImage(named: "image01.jpg")
    }
}
