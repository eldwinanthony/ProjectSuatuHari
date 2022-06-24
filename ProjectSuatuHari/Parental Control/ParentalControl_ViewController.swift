//
//  ParentalControl_ViewController.swift
//  ProjectSuatuHari
//
//  Created by Kevin Stanislaus Nugraha on 21/06/22.
//

import UIKit

class ParentalControl_ViewController: UIViewController {

    @IBOutlet weak var submit1: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let warna1 = UIColor(red: 106, green: 73, blue: 246)
        let warna2 = UIColor(red: 190, green: 145, blue: 245)
        

        let gradient = CAGradientLayer()
        gradient.colors = [warna1.cgColor, warna2.cgColor]
        gradient.frame = submit1.bounds
        gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 0.1)
        submit1.layer.insertSublayer(gradient, at: 0)
        submit1.layer.cornerRadius=25
        submit1.layer.masksToBounds=true
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var CardView: UIView!{
        didSet{
            CardView.layer.shadowOffset = CGSize(width: 10, height: 10)
            CardView.layer.shadowRadius = 10.0
            CardView.layer.shadowOpacity = 0.4
    
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
