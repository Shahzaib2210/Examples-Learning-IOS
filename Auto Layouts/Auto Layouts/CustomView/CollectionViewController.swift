//
//  CollectionViewController.swift
//  Auto Layouts
//
//  Created by Shahzaib Mumtaz on 14/01/2022.
//

import UIKit

class CollectionViewController: UIViewController {

    let imageArray = [ "image1"  , "image3" , "image1" , "image3" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 1 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! FirstCollectionViewCell
        
            cell.Load.image = UIImage(named: imageArray[indexPath.row])
            
            return cell
            
        } else if collectionView.tag == 2 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! SecondCollectionViewCell
            
            cell.Load2.image = UIImage(named: imageArray[indexPath.row])
            
            return cell
        
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! ThirdCollectionViewCell
            
            cell.Load3.image = UIImage(named: imageArray[indexPath.row])
            
            return cell
        }
        
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 119, height: 148)
        }
}
