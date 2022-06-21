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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrHomeCardImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCardCollectionViewCell", for: indexPath) as! HomeCardCollectionViewCell
        cell.homecardImage.image = arrHomeCardImage[indexPath.row]
        
        return cell
    }
    
}



