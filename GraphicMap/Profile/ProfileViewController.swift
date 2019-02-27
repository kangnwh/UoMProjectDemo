//
//  ProfileViewController.swift
//  GraphicMap
//
//  Created by Kang Ning on 26/2/19.
//  Copyright © 2019 UoM. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    @IBOutlet var buttonsNeedBorder: [UIButton]!
    
    var ActionCellNameList :[(action: String, segue: String)] = [
        ("My Contribution","contribution"),
        ("Favourites","favourites"),
        ("Search History","history"),
        ("Account Settings","settings"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIFuncs.setBorder(views: buttonsNeedBorder, width: 2, cornerRadius: 5, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}


