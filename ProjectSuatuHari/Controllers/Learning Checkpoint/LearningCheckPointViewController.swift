//
//  LearningCheckPointViewController.swift
//  ProjectSuatuHari
//
//  Created by Farabi Dharma on 20/06/22.
//

import UIKit
import CoreData

class LearningCheckPointViewController: UIViewController{
    
    let coreDataHelper = CoreDataHelper()
    var fetchTemp : NoteLearning?
    
    
    @IBOutlet weak var buttonAngkaTransparant: UIButton!{
        didSet{
            buttonAngkaTransparant.layer.cornerRadius = 12
            buttonAngkaTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
        }
    }
    @IBOutlet weak var buttonHurufTransparant: UIButton!{
        didSet{
            buttonHurufTransparant.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var buttonHurufWarna: UIButton!{
        didSet{
            buttonHurufWarna.layer.cornerRadius = 12
        }
    }
    
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
    @IBOutlet weak var StoryText: UILabel!
    @IBOutlet weak var NotesBackground: UIView!{
        didSet{
            NotesBackground.layer.borderWidth = 2
            NotesBackground.layer.borderColor = UIColor.black.cgColor
            NotesBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var summaryTitle: UILabel!{
        didSet{
            summaryTitle.text = "Bagaimana cara meningkatkan kemampuan anak mengenal angka?"
        }
    }
    @IBOutlet weak var summaryImage: UIImageView!{
        didSet{
            summaryImage.image = UIImage(named: "imageangka")
        }
    }
    @IBOutlet weak var summaryText: UILabel!{
        didSet{
            summaryText.text = "Melalui nyanyian, anak akan lebih mudah mengenal konsep angka. Ajak balita bernyanyi bersama lagu Satu-satu Aku Sayang Ibu. Lagu itu mengenalkan anak kepada bilangan dan urutan."
        }
    }
    @IBOutlet weak var summaryTextBackground: UIView!{
        didSet{
            summaryTextBackground.layer.shadowColor = UIColor.black.cgColor
            summaryTextBackground.layer.shadowOffset = CGSize(width: 5, height: 5)
            summaryTextBackground.layer.shadowRadius = 5.0
            summaryTextBackground.layer.shadowOpacity = 0.1
            summaryTextBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var summaryBackground: UIView!{
        didSet{
            summaryBackground.layer.shadowColor = UIColor.black.cgColor
            summaryBackground.layer.shadowOffset = CGSize(width: 5, height: 5)
            summaryBackground.layer.shadowRadius = 5.0
            summaryBackground.layer.shadowOpacity = 0.1
            summaryBackground.layer.cornerRadius = 12
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchText()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopBackgroundSound()
    }
    
    
    
    @IBAction
    func submitNote(){
        let context = coreDataHelper.getBackgroundContext()
        let note = NoteLearning(context: context)
        note.notes = Notes.text
        print(note)
        coreDataHelper.saveContext(saveContext: context)
    }
    //fetch
    func fetchText(){
        let context = coreDataHelper.getBackgroundContext()
        do
        {
            fetchTemp = try context.fetch(NoteLearning.fetchRequest()).last
            Notes.text = fetchTemp?.notes ?? "Anak sudah mahir membaca!"
            
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
            fetchTemp = try context.fetch(NoteLearning.fetchRequest()).last
//            let fetchReq :NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "SuatuHari")
//            let delete = NSBatchDeleteRequest(fetchRequest: fetchReq)
//            delete.resultType = .resultTypeObjectIDs
//            try context.execute(delete)
        
            context.delete(fetchTemp!)
            try coreDataHelper.saveContext()
            Notes.text = "Anak sudah mahir membaca!"
            
        }
        
        catch
        {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func backPressed(_ sender: Any) {
        playButtonSound()
    }
    @IBAction func pressAngka(){
        buttonAngkaTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
        buttonHurufTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        buttonHurufWarna.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        summaryTitle.text = "Bagaimana cara meningkatkan kemampuan anak mengenal angka?"
        summaryImage.image = UIImage(named: "imageangka")
        summaryText.text = "Melalui nyanyian, anak akan lebih mudah mengenal konsep angka. Ajak balita bernyanyi bersama lagu Satu-satu Aku Sayang Ibu. Lagu itu mengenalkan anak kepada bilangan dan urutan."
    }
    @IBAction func pressHuruf(){
        buttonAngkaTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        buttonHurufTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
        buttonHurufWarna.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        summaryTitle.text = "Bagaimana cara meningkatkan kemampuan anak mengenal huruf?"
        summaryImage.image = UIImage(named: "imagekata")
        summaryText.text = "Salah satu kegiatan favorit anak adalah menggambar. Nah, Bunda juga bisa mengajarinya tentang jumlah dan angka lewat aktivitas tersebut."
    }
    @IBAction func presswarna(){
        buttonAngkaTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        buttonHurufTransparant.backgroundColor = UIColor.darkGray.withAlphaComponent(0)
        buttonHurufWarna.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
        summaryTitle.text = "Bagaimana cara meningkatkan kemampuan anak mengenal warna?"
        summaryImage.image = UIImage(named: "imagewarna")
        summaryText.text = "Ajak balita bermain tebak-tebakan angka. Minta ia menebak angka berdasarkan petunjuk yang Anda berikan."
    }
    
    
    @IBOutlet weak var namaAnak: UILabel!
    var fetchTemps : SuatuHari?
    
    func fetchNama(){
//        let context = coreDataHelper.getBackgroundContext()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            fetchTemps = try context.fetch(SuatuHari.fetchRequest()).last
            namaAnak.text = fetchTemps?.namaAnak ?? ""
        }
        
        catch
        {
            print(error.localizedDescription)
        }
    }
}

