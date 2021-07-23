//
//  SearchResultVC.swift
//  Randa
//
//  Created by admin on 12/15/20.
//  Copyright © 2020 Debjit. All rights reserved.
//

import UIKit

class SearchResultVC: UIViewController {
    
    @IBOutlet weak var filterVW : UIView!{
        didSet{
            filterVW.layer.borderWidth = 0.5
            filterVW.layer.borderColor = UIColor.gray.cgColor
            
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
