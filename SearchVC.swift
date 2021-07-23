//
//  SearchVC.swift
//  Randa
//
//  Created by admin on 12/15/20.
//  Copyright © 2020 Debjit. All rights reserved.
//

import UIKit

class SearchVC: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var searchTextField : UITextField!
    @IBOutlet weak var searchBTN : UIButton!{
        didSet{
            searchBTN.layer.borderWidth = 0.8
            searchBTN.layer.borderColor = UIColor.black.cgColor
            searchBTN.layer.cornerRadius = 5
        }
    }
    
     @IBOutlet weak var searchVW : UIView!
    
    @IBOutlet weak var timeDateBtn : UIButton!
   @IBOutlet weak var genderBtn : UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        
        ButtonBoderWithRadiousCorner(button : timeDateBtn)
        ButtonBoderWithRadiousCorner(button : genderBtn)
       // ButtonBoderWithRadiousCorner(button : searchBTN)
        
        ViewBoder(VW : searchVW, CornerRadious : 4)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
    
    @IBAction func searchButtonAction( _ sender : UIButton){
        let vc = storyboard?.instantiateViewController(identifier: "SearchResultVC") as! SearchResultVC
         vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        
       }
    
}

extension SearchVC{
    func ViewBoder(VW : UIView, CornerRadious : CGFloat?)  {
        VW.layer.borderWidth = 0.4
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
        button.layer.borderWidth = 0.4
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 4
          
    }
}
