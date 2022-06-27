//
//  ParentalControl_ViewController3.swift
//  ProjectSuatuHari
//
//  Created by Kevin Stanislaus Nugraha on 22/06/22.
//

import UIKit

class ParentalControl_ViewController3: UIViewController {

    @IBOutlet weak var submit3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let warna1 = UIColor(red: 106, green: 73, blue: 246)
        let warna2 = UIColor(red: 190, green: 145, blue: 245)
        

        let gradient = CAGradientLayer()
        gradient.colors = [warna1.cgColor, warna2.cgColor]
        gradient.frame = submit3.bounds
        gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 0.1)
        submit3.layer.insertSublayer(gradient, at: 0)
        submit3.layer.cornerRadius=25
        submit3.layer.masksToBounds=true
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var CardView3: UIView!{
        didSet{
            CardView3.layer.shadowOffset = CGSize(width: 10, height: 10)
            CardView3.layer.shadowRadius = 10.0
            CardView3.layer.shadowOpacity = 0.4
         
        }
    }
    @IBAction func submitPressed(_ sender: Any) {
        playButtonSound()
    }
    @IBOutlet weak var SoundCardView: UIView!{
        didSet{
            SoundCardView.layer.borderWidth = 1
            SoundCardView.layer.borderColor = UIColor.gray.cgColor
            SoundCardView.layer.shadowOffset = CGSize(width: 3, height: 3)
            SoundCardView.layer.shadowRadius = 5.0
            SoundCardView.layer.shadowOpacity = 0.3

        }
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
