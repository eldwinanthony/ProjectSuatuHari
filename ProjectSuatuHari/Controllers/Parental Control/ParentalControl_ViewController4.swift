//
//  ParentalControl_ViewController4.swift
//  ProjectSuatuHari
//
//  Created by Kevin Stanislaus Nugraha on 23/06/22.
//

import UIKit

class ParentalControl_ViewController4: UIViewController {
    
    let gambar1 = UIImage(systemName: "chevron.down")
    let gambar2 = UIImage(systemName: "chevron.up")
    
    
  
    @IBOutlet weak var TimePopUp: UIButton!
    
    @IBOutlet weak var submit4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let warna1 = UIColor(red: 106, green: 73, blue: 246)
        let warna2 = UIColor(red: 190, green: 145, blue: 245)
        

        let gradient = CAGradientLayer()
        gradient.colors = [warna1.cgColor, warna2.cgColor]
        gradient.frame = submit4.bounds
        gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 0.1)
        submit4.layer.insertSublayer(gradient, at: 0)
        submit4.layer.cornerRadius=25
        submit4.layer.masksToBounds=true
   
        
        PopUpWaktu()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitPressed(_ sender: Any) {
        playButtonSound()
    }
    
    @IBOutlet weak var CardView4: UIView!{
        didSet{
            CardView4.layer.shadowOffset = CGSize(width: 10, height: 10)
            CardView4.layer.shadowRadius = 10.0
            CardView4.layer.shadowOpacity = 0.4
         
        }
    }
    
    
    @IBOutlet weak var TimeCardView: UIView!{
        didSet{
        TimeCardView.layer.borderWidth = 1
        TimeCardView.layer.borderColor = UIColor.gray.cgColor
        TimeCardView.layer.shadowOffset = CGSize(width: 3, height: 3)
        TimeCardView.layer.shadowRadius = 5.0
        TimeCardView.layer.shadowOpacity = 0.3

    }
}
    
    
    func PopUpWaktu(){
        let pilihan = {(flag : UIAction) in print(flag.title)}
        
        TimePopUp.setImage(gambar2, for: UIControl.State.normal)
       
        
        if TimePopUp.isSelected{
            TimePopUp.setImage(gambar1, for: UIControl.State.selected)
        }
        
        TimePopUp.menu = UIMenu(children : [
            UIAction(title: "15 Menit  ", state: .on, handler: pilihan),
            UIAction(title: "30 Menit  ", handler: pilihan),
            UIAction(title: "45 Menit  ", handler: pilihan),
            UIAction(title: "60 Menit  ", handler: pilihan)])
      
        
       
       
        
     

        TimePopUp.showsMenuAsPrimaryAction = true
        TimePopUp.changesSelectionAsPrimaryAction = true
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
