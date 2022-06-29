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
import CoreData

protocol viewControllerHomeDelegate: AnyObject {
    
}

var StarTotal = 0

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    weak var delegate : viewControllerHomeDelegate?
    let coreDataHelper = CoreDataHelper()
    var fetchTemp : SuatuHari?
    var fetchNote : NoteLearning?
    
    
    
    //set outlets home page
    @IBOutlet weak var starTotalLabel: UILabel!
    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var charButton: UIButton!
    @IBOutlet weak var checkpointButton: UIButton!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var profiling: UILabel!
    
    //define current cell index = 0
    var currentCellIndex = 0
    
    //declare the card image
    var arrHomeCardImage = [UIImage(named: "card1"), UIImage(named: "card2"), UIImage(named: "card3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(firstTimeFlag)
        
        
        
        print(firstTimeFlag)
        
        //set radius and shadow to starView
        starView.layer.cornerRadius = 10
        starView.layer.shadowColor = UIColor.black.cgColor
        starView.layer.shadowOpacity = 0.5
        starView.layer.shadowOffset = .zero
        starView.layer.shadowRadius = 2
        starView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        
        //hide previous btn when started
        previousBtn.isHidden = true
        self.fetchNama()
        
        starTotalLabel.text = "\(StarTotal) /15"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        playBackgroundSoundHome()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if firstTimeFlag == 1{
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0) {
                self.performSegue(withIdentifier: "HomePopUpSegue", sender: nil)
                firstTimeFlag -= 1
            }

        }
    }
    
    func fetchNama(){
//        let context = coreDataHelper.getBackgroundContext()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            fetchTemp = try context.fetch(SuatuHari.fetchRequest()).last
            profiling.text = "Halo " + (fetchTemp?.namaAnak ?? "")
        }
        
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    //when char button pressed:
    @IBAction func charButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    //when learning button pressed:
    @IBAction func learningButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    //when guideline button pressed:
    @IBAction func guidelineButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    //when setting button pressed:
    @IBAction func settingButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    //define size of collection view cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    //define the spacing between cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //define the number of cell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrHomeCardImage.count
    }
    
    //define the image for each cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCardCollectionViewCell", for: indexPath) as! HomeCardCollectionViewCell
        cell.homecardImage.image = arrHomeCardImage[indexPath.row]
        
        return cell
    }
    
    //when the next cell button pressed
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
    
    //when the previous button pressed
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
    
    func fetchText(){
        let context = coreDataHelper.getBackgroundContext()
        do
        {
            fetchNote = try context.fetch(NoteLearning.fetchRequest()).last
            
        }
        
        catch
        {
            print(error.localizedDescription)
        }
        
    }
}




