//
//  BookingVC.swift
//  Randa
//
//  Created by admin on 12/15/20.
//  Copyright © 2020 Debjit. All rights reserved.
//

import UIKit

class BookingVC: UIViewController {
    @IBOutlet weak var classBTN : UIButton!
    @IBOutlet weak var receiptBTN : UIButton!
    
    @IBOutlet weak var upcomingBTN : UIButton!
    @IBOutlet weak var completeBTN : UIButton!
    
    @IBOutlet weak var upcomingLblBar : UILabel!
    @IBOutlet weak var completeLblBar : UILabel!
    
     @IBOutlet weak var dateVW1 : UIView!
     @IBOutlet weak var dateVW2 : UIView!
    
     @IBOutlet weak var boderButton1 : UIButton!
    @IBOutlet weak var boderButton2 : UIButton!
    @IBOutlet weak var boderButton3 : UIButton!
    @IBOutlet weak var boderButton4 : UIButton!
    
    @IBOutlet weak var extendLbl : UILabel!
    @IBOutlet weak var clickHere : UILabel!
    
    @IBOutlet weak var firstDateLbl : UILabel!
    @IBOutlet weak var secondDateLbl : UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        ViewBoder(VW : dateVW1, CornerRadious : 3)
         ViewBoder(VW : dateVW2, CornerRadious : 3)
        
        ButtonBoderWithRadiousCorner(button : classBTN)
        ButtonBoderWithRadiousCorner(button : receiptBTN)
        
        
        ButtonBoderLIGHTWithRadiousCorner(button : boderButton1)
        ButtonBoderLIGHTWithRadiousCorner(button : boderButton2)
        ButtonBoderLIGHTWithRadiousCorner(button : boderButton3)
        ButtonBoderLIGHTWithRadiousCorner(button : boderButton4)
        
        
        completeBTN.setTitleColor(UIColor(named: "Color2"), for: .normal)
        upcomingBTN.setTitleColor(UIColor.red, for: .normal)
        upcomingLblBar.backgroundColor = UIColor.red
        completeLblBar.isHidden = true
        upcomingLblBar.isHidden = false
        
        extendLbl.isHidden = false
         clickHere.isHidden = false
        
        boderButton1.setTitle("Running", for: .normal)
        boderButton1.setTitle("Scheduled", for: .normal)
        boderButton1.setTitle("Scheduled", for: .normal)
        boderButton1.setTitle("Scheduled", for: .normal)
        
        firstDateLbl.text = "16 Aug 2020"
        secondDateLbl.text = "17 Aug 2020"
    }
    
    @IBAction func upcomingButtonAction( _ sender : UIButton){
               
       }
    @IBAction func completeButtonAction( _ sender : UIButton){
            extendLbl.isHidden = true
            clickHere.isHidden = true
        
        boderButton1.setTitle("Completed", for: .normal)
        boderButton1.setTitle("Completed", for: .normal)
        boderButton1.setTitle("Completed", for: .normal)
        boderButton1.setTitle("Completed", for: .normal)
        
        firstDateLbl.text = "17 Aug 2020"
        secondDateLbl.text = "16 Aug 2020"
        
        upcomingBTN.setTitleColor(UIColor(named: "Color2"), for: .normal)
        completeBTN.setTitleColor(UIColor.red, for: .normal)
        completeLblBar.backgroundColor = UIColor.red
        upcomingLblBar.isHidden = true
        completeLblBar.isHidden = false
    }
    
  

}
extension BookingVC{
    func ViewBoder(VW : UIView, CornerRadious : CGFloat?)  {
        VW.layer.borderWidth = 1.0
        VW.layer.borderColor = UIColor.black.cgColor
        VW.layer.cornerRadius = CornerRadious!
          
    }
    func ViewBoderWhite(VW : UIView, CornerRadious : CGFloat?)  {
        VW.layer.borderWidth = 1.0
        VW.layer.borderColor = UIColor.white.cgColor
        VW.layer.cornerRadius = CornerRadious!
          
    }
    
    func ButtonBoder(button : UIButton)  {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.black.cgColor
          
    }
    
    func ButtonBoderWithRadiousCorner(button : UIButton)  {
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 5
          
    }
    
    func ButtonBoderLIGHTWithRadiousCorner(button : UIButton)  {
           button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor(named: "Color2")?.cgColor
           button.layer.cornerRadius = 3
             
       }
    
}
