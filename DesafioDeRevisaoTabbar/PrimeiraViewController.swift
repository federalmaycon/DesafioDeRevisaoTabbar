//
//  ViewController.swift
//  DesafioDeRevisaoTabbar
//
//  Created by Maycon Anderson on 18/10/21.
//

import UIKit

class PrimeiraViewController: UIViewController {
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    @IBOutlet weak var locationCollectionView: UICollectionView!
    
    var location = ["loc01.jpg", "loc02.jpg", "loc03.jpg"]
    var image = ["image01.jpg", "image02.jpg", "image03.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        locationCollectionView.delegate = self
        locationCollectionView.dataSource = self
        
    }


}

extension PrimeiraViewController: UICollectionViewDelegate {
    
}

extension PrimeiraViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return location.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as? CollectionViewCell {
            cell.setup(with: location[indexPath.row])
            return cell
        }
        return CollectionViewCell()
    }
    
    
}
