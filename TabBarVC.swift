//
//  TabBarVC.swift
//  Randa
//
//  Created by admin on 12/15/20.
//  Copyright © 2020 Debjit. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {
    
    @IBOutlet weak var tabview : UIView!
    
     @IBOutlet weak var homeBtn : UIButton!
     @IBOutlet weak var homeImg : UIImageView!
     @IBOutlet weak var homeLbl : UILabel!
     @IBOutlet weak var homeLblBar : UILabel!
    
     @IBOutlet weak var inboxBtn : UIButton!
     @IBOutlet weak var inboxImg : UIImageView!
     @IBOutlet weak var inboxLbl : UILabel!
     @IBOutlet weak var inboxLblBar : UILabel!
    
     @IBOutlet weak var bookingBtn : UIButton!
     @IBOutlet weak var bookingImg : UIImageView!
     @IBOutlet weak var bookingLbl : UILabel!
     @IBOutlet weak var bookingLblBar : UILabel!
    
     @IBOutlet weak var searchBtn : UIButton!
     @IBOutlet weak var searchImg : UIImageView!
     @IBOutlet weak var searchLbl : UILabel!
     @IBOutlet weak var searchLblBar : UILabel!
    
     @IBOutlet weak var profileBtn : UIButton!
     @IBOutlet weak var profileImg : UIImageView!
     @IBOutlet weak var profileLbl : UILabel!
     @IBOutlet weak var profileLblBar : UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabview.frame = CGRect(x: 0, y: 847 - 20, width: self.tabBar.frame.size.width, height: self.tabBar.frame.size.height + 100)
               self.view.addSubview(tabview)
               self.tabBar.isHidden = true
        
                  homeImg.tintColor = UIColor.red
                  homeLbl.textColor = UIColor.red
                  homeLblBar.backgroundColor = UIColor.red
                  
                  inboxImg.tintColor = UIColor(named: "Color2")
                  inboxLbl.textColor = UIColor(named: "Color2")
                  inboxLblBar.backgroundColor = UIColor.white
                  
                  bookingImg.tintColor = UIColor(named: "Color2")
                  bookingLbl.textColor = UIColor(named: "Color2")
                  bookingLblBar.backgroundColor = UIColor.white
                  
                  searchImg.tintColor = UIColor(named: "Color2")
                  searchLbl.textColor = UIColor(named: "Color2")
                  searchLblBar.backgroundColor = UIColor.white
                  
                  profileImg.tintColor = UIColor(named: "Color2")
                  profileLbl.textColor = UIColor(named: "Color2")
                  profileLblBar.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func tabButtonAction(_ sender: Any) {
        switch  ((sender as AnyObject).tag ) {
        case 0:
            
            homeImg.tintColor = UIColor.red
            homeLbl.textColor = UIColor.red
            homeLblBar.backgroundColor = UIColor.red
            
            inboxImg.tintColor = UIColor(named: "Color2")
            inboxLbl.textColor = UIColor(named: "Color2")
            inboxLblBar.backgroundColor = UIColor.white
            
            bookingImg.tintColor = UIColor(named: "Color2")
            bookingLbl.textColor = UIColor(named: "Color2")
            bookingLblBar.backgroundColor = UIColor.white
            
            searchImg.tintColor = UIColor(named: "Color2")
            searchLbl.textColor = UIColor(named: "Color2")
            searchLblBar.backgroundColor = UIColor.white
            
            profileImg.tintColor = UIColor(named: "Color2")
            profileLbl.textColor = UIColor(named: "Color2")
            profileLblBar.backgroundColor = UIColor.white
            
            print(1)
            
            break
        case 1:
            homeImg.tintColor = UIColor(named: "Color2")
            homeLbl.textColor = UIColor(named: "Color2")
            homeLblBar.backgroundColor =  UIColor.white
                       
            inboxImg.tintColor = UIColor.red
            inboxLbl.textColor = UIColor.red
            inboxLblBar.backgroundColor = UIColor.red
                       
            bookingImg.tintColor = UIColor(named: "Color2")
            bookingLbl.textColor = UIColor(named: "Color2")
            bookingLblBar.backgroundColor = UIColor.white
                       
            searchImg.tintColor = UIColor(named: "Color2")
            searchLbl.textColor = UIColor(named: "Color2")
            searchLblBar.backgroundColor = UIColor.white
                       
            profileImg.tintColor = UIColor(named: "Color2")
            profileLbl.textColor = UIColor(named: "Color2")
            profileLblBar.backgroundColor = UIColor.white
             print(2)
            break
        case 2:
            homeImg.tintColor = UIColor(named: "Color2")
            homeLbl.textColor = UIColor(named: "Color2")
            homeLblBar.backgroundColor = UIColor.white
                       
            inboxImg.tintColor = UIColor(named: "Color2")
            inboxLbl.textColor = UIColor(named: "Color2")
            inboxLblBar.backgroundColor = UIColor.white
                       
            bookingImg.tintColor =  UIColor.red
            bookingLbl.textColor =  UIColor.red
            bookingLblBar.backgroundColor =  UIColor.red
                       
            searchImg.tintColor = UIColor(named: "Color2")
            searchLbl.textColor = UIColor(named: "Color2")
            searchLblBar.backgroundColor = UIColor.white
                       
            profileImg.tintColor = UIColor(named: "Color2")
            profileLbl.textColor = UIColor(named: "Color2")
            profileLblBar.backgroundColor = UIColor.white
             print(3)
            break
        case 3:
            homeImg.tintColor = UIColor(named: "Color2")
            homeLbl.textColor = UIColor(named: "Color2")
            homeLblBar.backgroundColor = UIColor.white
                       
            inboxImg.tintColor = UIColor(named: "Color2")
            inboxLbl.textColor = UIColor(named: "Color2")
            inboxLblBar.backgroundColor = UIColor.white
                       
            bookingImg.tintColor = UIColor(named: "Color2")
            bookingLbl.textColor = UIColor(named: "Color2")
            bookingLblBar.backgroundColor = UIColor.white
                       
            searchImg.tintColor =  UIColor.red
            searchLbl.textColor =  UIColor.red
            searchLblBar.backgroundColor =  UIColor.red
                       
            profileImg.tintColor = UIColor(named: "Color2")
            profileLbl.textColor = UIColor(named: "Color2")
            profileLblBar.backgroundColor = UIColor.white
             print(4)
            break
        case 4:
            homeImg.tintColor = UIColor(named: "Color2")
            homeLbl.textColor = UIColor(named: "Color2")
            homeLblBar.backgroundColor = UIColor.white
                       
            inboxImg.tintColor = UIColor(named: "Color2")
            inboxLbl.textColor = UIColor(named: "Color2")
            inboxLblBar.backgroundColor = UIColor.white
                       
            bookingImg.tintColor = UIColor(named: "Color2")
            bookingLbl.textColor = UIColor(named: "Color2")
            bookingLblBar.backgroundColor = UIColor.white
                       
            searchImg.tintColor = UIColor(named: "Color2")
            searchLbl.textColor = UIColor(named: "Color2")
            searchLblBar.backgroundColor = UIColor.white
                       
            profileImg.tintColor =  UIColor.red
            profileLbl.textColor =  UIColor.red
            profileLblBar.backgroundColor =  UIColor.red
             print(5)
            break
        default:
            break
        }
        self.selectedIndex = ((sender as AnyObject).tag )
    }
}
