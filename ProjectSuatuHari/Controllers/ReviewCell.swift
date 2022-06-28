//
//  ReviewCell.swift
//  ProjectSuatuHari
//
//  Created by Farabi Dharma on 21/06/22.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    @IBOutlet weak var reviewBackgroundCard: UIView!
    @IBOutlet weak var reviewBackground: UIView!{
        didSet{
            reviewBackground.layer.borderWidth = 2
            reviewBackground.layer.borderColor = UIColor.black.cgColor
            reviewBackground.layer.cornerRadius = 12
        }
    }
    @IBOutlet weak var reviewText: UILabel!
    @IBOutlet weak var reviewImage: UIImageView!
    @IBOutlet weak var reviewBottomText: UILabel!
    @IBOutlet weak var reviewBottomBackgrounds: UIView!{
        didSet{
            reviewBottomBackgrounds.layer.cornerRadius = 12
        }
    }
    func setupReviewView(indexForDraw: Int){
        
    }
}
