//
//  ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

//
//  ViewController.swift
//  SuatuHari
//
//  Created by Eldwin Anthony on 14/06/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var charButton: UIButton!
    @IBOutlet weak var checkpointButton: UIButton!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    
    var currentCellIndex = 0
    
    var arrHomeCardImage = [UIImage(named: "card1"), UIImage(named: "card2"), UIImage(named: "card3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set radius and shadow to starView
        starView.layer.cornerRadius = 10
        starView.layer.shadowColor = UIColor.black.cgColor
        starView.layer.shadowOpacity = 0.5
        starView.layer.shadowOffset = .zero
        starView.layer.shadowRadius = 2
        starView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        
        previousBtn.isHidden = true
        
    }
    
    @IBAction func charButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    @IBAction func learningButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    @IBAction func guidelineButtonPressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
    @IBAction func settingButtonPressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrHomeCardImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCardCollectionViewCell", for: indexPath) as! HomeCardCollectionViewCell
        cell.homecardImage.image = arrHomeCardImage[indexPath.row]
        
        return cell
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
                playButtonSound()
                currentCellIndex += 1
                
                //HIDE NEXT BTN IF CELL AT TOTAL INDEX - 1
                if currentCellIndex == arrHomeCardImage.count - 1{
                    nextBtn.isHidden = true
                }
                
                //SCROLL NEXT
                if currentCellIndex < arrHomeCardImage.count{
                    homeCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
                    previousBtn.isHidden = false
                }

    }
    @IBAction func previousBtnPressed(_ sender: Any) {
                playButtonSound()
                currentCellIndex -= 1
                
                //UNHIDE THE NEXT BUTTON
                if currentCellIndex != arrHomeCardImage.count - 1 {
                    nextBtn.isHidden =  false
                }
                
                //HIDE THE PREVIOUS BUTTON AT FIRST CELL
                if currentCellIndex == 0{
                    previousBtn.isHidden = true
                }
                
                //SCROLL PREVIOUS
                if currentCellIndex < arrHomeCardImage.count{
                    homeCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
                }
    }
}



