//
//  Story4ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

import UIKit

class Story4ViewController: UIViewController {

    @IBOutlet weak var ACariImageView: UIImageView!
    @IBOutlet weak var HCariImageView: UIImageView!
    
    @IBOutlet weak var AJawab: UIImageView!
    @IBOutlet weak var HJawab: UIImageView!
    
    var ACariOrigin: CGPoint!
    var HCariOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPanGesture(view: ACariImageView)
        addPanGesture(view: HCariImageView)
        
        ACariOrigin = ACariImageView.frame.origin
        HCariOrigin = HCariImageView.frame.origin
        
        view.bringSubviewToFront(ACariImageView)
        view.bringSubviewToFront(HCariImageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AJawab.isHidden = true
        HJawab.isHidden = true
    }
    
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(Story4ViewController.handlePan(sender:)))
        
        view.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer){
        
        let ACariView = sender.view!
        let HCariView = sender.view!
        
        switch sender.state {
        case .began, .changed:
            moveViewWithPan(view: ACariView, sender: sender)
            moveViewWithPan(view: HCariView, sender: sender)
        case .ended:
            if ACariView.frame.intersects(AJawab.frame){
                showViewA(view: ACariView)
            }
            if HCariView.frame.intersects(HJawab.frame) {
                showViewH(view: HCariView)
            }
            if HCariView.frame.intersects(HJawab.frame) != false{
                returnViewToOriginH(view: HCariView)
            }
            else{
                returnViewToOriginA(view: ACariView)
            }
            
        default:
            break
        }
        
    }
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func showViewA(view: UIView) {
        
        AJawab.isHidden = false
        ACariImageView.isHidden = true
    }
    
    func returnViewToOriginA(view: UIView) {
        
        UIView.animate(withDuration: 0.7, animations: {
            view.frame.origin = self.ACariOrigin
        })
    }
    
    func showViewH(view: UIView) {
        
        HJawab.isHidden = false
        HCariImageView.isHidden = true
    }
    
    func returnViewToOriginH(view: UIView) {
        
        UIView.animate(withDuration: 0.7, animations: {
            view.frame.origin = self.HCariOrigin
        })
    }
    
}
