//
//  ParentalGuidelinesViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 20/06/22.
//

import UIKit

class ParentalGuidelinesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var closePGBtn: UIButton!
    @IBOutlet weak var PGCollectionView: UICollectionView!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pgPageControl: UIPageControl!
    
    //SET THE ARRAY OF IMAGE
    var pgimageArray = [UIImage(named: "PG1"), UIImage(named: "PG2"), UIImage(named: "PG3"), UIImage(named: "PG4"), UIImage(named: "PG5")]
    
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PGCollectionView.delegate = self
        PGCollectionView.dataSource = self
        
        previousBtn.isHidden = true
        
        pgPageControl.numberOfPages = pgimageArray.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
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
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pgPageControl.currentPage = currentCellIndex
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        playButtonSound()
        currentCellIndex += 1
        
        if currentCellIndex == pgimageArray.count - 1{
            nextBtn.isHidden = true
        }
        
        if currentCellIndex < pgimageArray.count{
            PGCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            previousBtn.isHidden = false
        }
    }
    
    
    @IBAction func previousPressed(_ sender: Any) {
        playButtonSound()
        currentCellIndex -= 1
        
        if currentCellIndex != pgimageArray.count - 1 {
            nextBtn.isHidden =  false
        }
        
        if currentCellIndex == 0{
            previousBtn.isHidden = true
        }
        
        if currentCellIndex < pgimageArray.count{
            PGCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        }

    }
    @IBAction func closePressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
}
