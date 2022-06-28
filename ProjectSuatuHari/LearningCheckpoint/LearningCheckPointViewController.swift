//
//  LearningCheckPointViewController.swift
//  ProjectSuatuHari
//
//  Created by Farabi Dharma on 20/06/22.
//

import UIKit
import CoreData

class LearningCheckPointViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let coreDataHelper = CoreDataHelper()
    var fetchTemp : SuatuHari?
    @IBOutlet weak var StoryBackground: UIView!{
        didSet{
            StoryBackground.layer.borderWidth = 2
            StoryBackground.layer.borderColor = UIColor.black.cgColor
            StoryBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var SubmitButton: UIButton!
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
    @IBOutlet weak var StoryText: UILabel!
    @IBOutlet weak var NotesBackground: UIView!{
        didSet{
            NotesBackground.layer.borderWidth = 2
            NotesBackground.layer.borderColor = UIColor.black.cgColor
            NotesBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var reviewCollectionView: UICollectionView!
    
    var activityArray = ["Melalui nyanyian, anak akan lebih mudah mengenal konsep angka. Ajak balita bernyanyi bersama lagu Satu-satu Aku Sayang Ibu. Lagu itu mengenalkan anak kepada bilangan dan urutan.", "Salah satu kegiatan favorit anak adalah menggambar. Nah, Bunda juga bisa mengajarinya tentang jumlah dan angka lewat aktivitas tersebut.", "Ajak balita bermain tebak-tebakan angka. Minta ia menebak angka berdasarkan petunjuk yang Anda berikan."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchText()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopBackgroundSound()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewID", for: indexPath) as? ReviewCell)!
        cell.setupReviewView(indexForDraw: indexPath.row)
        cell.reviewBottomText.text = activityArray[indexPath.row]
        return cell
    }
    @IBAction
    func submitNote(){
        let context = coreDataHelper.getBackgroundContext()
        let note = SuatuHari(context: context)
        note.noteLearningCheckPoint = Notes.text
        print(note)
        coreDataHelper.saveContext(saveContext: context)
    }
    //fetch
    func fetchText(){
        let context = coreDataHelper.getBackgroundContext()
        do
        {
            fetchTemp = try context.fetch(SuatuHari.fetchRequest()).last
            Notes.text = fetchTemp?.noteLearningCheckPoint ?? "edit here!"
            
        }
        
        catch
        {
            print(error.localizedDescription)
        }
        
    }
    @IBAction
    func deleteNama(){
        let context = coreDataHelper.getBackgroundContext()
        do
        {
            fetchTemp = try context.fetch(SuatuHari.fetchRequest()).last
//            let fetchReq :NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "SuatuHari")
//            let delete = NSBatchDeleteRequest(fetchRequest: fetchReq)
//            delete.resultType = .resultTypeObjectIDs
//            try context.execute(delete)
        
            context.delete(fetchTemp!)
            try coreDataHelper.saveContext()
            Notes.text = "edit here!"
            
        }
        
        catch
        {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func backPressed(_ sender: Any) {
        playButtonSound()
    }
}
