//
//  ParentalGuidelinesViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 20/06/22.
//

import UIKit

class ParentalGuidelinesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //SET OUTLETS FOR ELEMENTS IN STORYBOARD
    @IBOutlet weak var closePGBtn: UIButton!
    @IBOutlet weak var PGCollectionView: UICollectionView!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pgPageControl: UIPageControl!
    @IBOutlet weak var nextViewBtn: UIButton!
    
    
    //SET THE ARRAY OF IMAGE
    var pgimageArray = [UIImage(named: "PG1"), UIImage(named: "PG2"), UIImage(named: "PG3"), UIImage(named: "PG4"), UIImage(named: "PG5")]
    
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopBackgroundSound()
        
        PGCollectionView.delegate = self
        PGCollectionView.dataSource = self
        
        //HIDE PREVIOUS BUTTON
        previousBtn.isHidden = true
        
        //DEFINE TOTAL DOTS IN PAGE CONTROL
        pgPageControl.numberOfPages = pgimageArray.count
        
        nextViewBtn.isHidden = true
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    // GIVE 0 SPACING
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //DEFINE THE NUMBER OF CELL
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pgimageArray.count
    }
    
    //DEFINE THE CELL
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PGCollectionViewCell", for: indexPath) as! PGCollectionViewCell
        cell.PGImage.image = pgimageArray[indexPath.row]
        
        return cell
    }
    
    //DEFINE CURRENT POSITION OF PAGE CONTROL
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pgPageControl.currentPage = currentCellIndex
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        playButtonSound()
        currentCellIndex += 1
        
        //HIDE NEXT BTN IF CELL AT TOTAL INDEX - 1
        if currentCellIndex == pgimageArray.count - 1{
            nextBtn.isHidden = true
            nextViewBtn.isHidden = false
        }
        
        //SCROLL NEXT
        if currentCellIndex < pgimageArray.count{
            PGCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            previousBtn.isHidden = false
        }
    }
    
    
    @IBAction func previousPressed(_ sender: Any) {
        playButtonSound()
        currentCellIndex -= 1
        
        //UNHIDE THE NEXT BUTTON
        if currentCellIndex != pgimageArray.count - 1 {
            nextBtn.isHidden =  false
        }
        
        //HIDE THE PREVIOUS BUTTON AT FIRST CELL
        if currentCellIndex == 0{
            previousBtn.isHidden = true
        }
        
        if currentCellIndex < pgimageArray.count - 1{
            nextViewBtn.isHidden = true
        }
        
        //SCROLL PREVIOUS
        if currentCellIndex < pgimageArray.count{
            PGCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        }

    }
    @IBAction func closePressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
}
