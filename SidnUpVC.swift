//
//  SidnUpVC.swift
//  Randa
//
//  Created by admin on 12/15/20.
//  Copyright © 2020 Debjit. All rights reserved.
//

import UIKit

class SidnUpVC: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var emailIMGVW : UIImageView!
    @IBOutlet weak var passwordIMGVW : UIImageView!
    @IBOutlet weak var confirmpasswordIMGVW : UIImageView!
    
    @IBOutlet weak var emailVW : UIView!
    @IBOutlet weak var passwordVW : UIView!
    @IBOutlet weak var confirmpasswordVW : UIView!
    
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var confirmpasswordTextField : UITextField!
    
     @IBOutlet weak var signUPBTN : UIButton!
     @IBOutlet weak var agreeBTN : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
         passwordTextField.delegate = self
        confirmpasswordTextField.delegate = self
        
        ButtonBoderWithRadiousCorner(button: signUPBTN)
        ButtonBoderWithRadiousCorner(button: agreeBTN)
        
        ViewBoderWhite(VW: emailVW, CornerRadious: 3)
        ViewBoderWhite(VW: passwordVW, CornerRadious: 3)
        ViewBoderWhite(VW: confirmpasswordVW, CornerRadious: 3)
                   
        passwordIMGVW.tintColor = UIColor(named: "Color2")
        confirmpasswordIMGVW.tintColor = UIColor(named: "Color2")
        emailIMGVW.tintColor =  UIColor(named: "Color2")

    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == emailTextField{
            ViewBoder(VW: emailVW, CornerRadious: 3)
            ViewBoderWhite(VW: passwordVW, CornerRadious: 3)
            ViewBoderWhite(VW: confirmpasswordVW, CornerRadious: 3)
            
            passwordIMGVW.tintColor = UIColor(named: "Color2")
            confirmpasswordIMGVW.tintColor = UIColor(named: "Color2")
            emailIMGVW.tintColor =  UIColor(named: "Color1")
            
        }else if textField == passwordTextField{
            ViewBoder(VW: passwordVW, CornerRadious: 3)
                       ViewBoderWhite(VW: emailVW, CornerRadious: 3)
                       ViewBoderWhite(VW: confirmpasswordVW, CornerRadious: 3)
                       
                       emailIMGVW.tintColor = UIColor(named: "Color2")
                       confirmpasswordIMGVW.tintColor = UIColor(named: "Color2")
                       passwordIMGVW.tintColor =  UIColor(named: "Color1")
        }else{
            ViewBoder(VW: confirmpasswordVW, CornerRadious: 3)
                       ViewBoderWhite(VW: passwordVW, CornerRadious: 3)
                       ViewBoderWhite(VW: emailVW, CornerRadious: 3)
                       
                       passwordIMGVW.tintColor = UIColor(named: "Color2")
                       emailIMGVW.tintColor = UIColor(named: "Color2")
                       confirmpasswordIMGVW.tintColor =  UIColor(named: "Color1")
        }
    }
    
    
    @IBAction func signupButtonAction( _ sender : UIButton){
               let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
               let VC = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
               UIApplication.shared.windows.first?.rootViewController = UINavigationController(rootViewController: VC)
               UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    @IBAction func agreeButtonAction( _ sender : UIButton){
      
        agreeBTN.setBackgroundImage(UIImage(named: "selected"), for: .normal)
    }

}


extension SidnUpVC{
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
        button.layer.cornerRadius = 4
          
    }
}
