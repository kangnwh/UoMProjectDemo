//
//  SignupViewController.swift
//  GraphicMap
//
//  Created by Kang Ning on 25/2/19.
//  Copyright © 2019 UoM. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {


    @IBOutlet var buttonsNeedBorder: [UIButton]!
    
    @IBOutlet weak var formView: UIView!
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFuncs.setBorder(layer: formView.layer, width: 1, cornerRadius: 5, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))
//        UIFuncs.setBorder(views: buttonsNeedBorder, width: 1, cornerRadius: 15, color: #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SignupViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onBackClick() {
        self.navigationController?.popViewController(animated: true)
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
