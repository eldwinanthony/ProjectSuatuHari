//
//  LearningCheckPointViewController.swift
//  ProjectSuatuHari
//
//  Created by Farabi Dharma on 20/06/22.
//

import UIKit

class LearningCheckPointViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var StoryBackground: UIView!{
        didSet{
            StoryBackground.layer.borderWidth = 2
            StoryBackground.layer.borderColor = UIColor.black.cgColor
            StoryBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var ParameterSatuText: UIView!
    @IBOutlet weak var ParameterSatuBintang: UIImageView!
    @IBOutlet weak var ParameterSatuBox: UIView!{
        didSet{
            ParameterSatuBox.layer.shadowColor = UIColor.black.cgColor
            ParameterSatuBox.layer.shadowOffset = CGSize(width: 5, height: 5)
            ParameterSatuBox.layer.shadowRadius = 5.0
            ParameterSatuBox.layer.shadowOpacity = 0.1
            ParameterSatuBox.layer.cornerRadius = 12

        }
    }
    @IBOutlet weak var ParameterDuaText: UILabel!
    @IBOutlet weak var ParameterDuaBintang: UIImageView!
    @IBOutlet weak var ParameterDuaBox: UIView!{
        didSet{
            ParameterDuaBox.layer.shadowColor = UIColor.black.cgColor
            ParameterDuaBox.layer.shadowOffset = CGSize(width: 5, height: 5)
            ParameterDuaBox.layer.shadowRadius = 5.0
            ParameterDuaBox.layer.shadowOpacity = 0.1
            ParameterDuaBox.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var ParameterTigaText: UILabel!
    @IBOutlet weak var ParameterTigaBintang: UIImageView!
    @IBOutlet weak var ParameterTigaBox: UIView!{
        didSet{
            ParameterTigaBox.layer.shadowColor = UIColor.black.cgColor
            ParameterTigaBox.layer.shadowOffset = CGSize(width: 5, height: 5)
            ParameterTigaBox.layer.shadowRadius = 5.0
            ParameterTigaBox.layer.shadowOpacity = 0.1
            ParameterTigaBox.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var Notes: UITextView!
    @IBOutlet weak var ButtonTrash: UIButton!
    @IBOutlet weak var ButtonEdit: UIButton!
    @IBOutlet weak var StoryText: UILabel!
    @IBOutlet weak var NotesBackground: UIView!{
        didSet{
            NotesBackground.layer.borderWidth = 2
            NotesBackground.layer.borderColor = UIColor.black.cgColor
            NotesBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var reviewCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewID", for: indexPath) as? ReviewCell)!
        cell.setupReviewView(indexForDraw: indexPath.row)
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
