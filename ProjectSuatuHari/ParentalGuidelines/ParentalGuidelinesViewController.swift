//
//  ParentalGuidelinesViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 20/06/22.
//

import UIKit

class ParentalGuidelinesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var PGCollectionView: UICollectionView!
    
    //SET THE ARRAY OF IMAGE
    var pgimageArray = [UIImage(named: "PG1"), UIImage(named: "PG2"), UIImage(named: "PG3"), UIImage(named: "PG4"), UIImage(named: "PG5")]
    
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PGCollectionView.delegate = self
        PGCollectionView.dataSource = self
       
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pgimageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PGCollectionViewCell", for: indexPath) as! PGCollectionViewCell
        cell.PGImage.image = pgimageArray[indexPath.row]
        
        return cell
    }
    

}
