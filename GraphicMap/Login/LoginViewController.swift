//
//  LoginViewController.swift
//  GraphicMap
//
//  Created by Kang Ning on 25/2/19.
//  Copyright © 2019 UoM. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet var buttonsNeedBorder: [UIButton]!
    
    @IBOutlet weak var formView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFuncs.setBorder(layer: formView.layer, width: 1, cornerRadius: 5, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))
        self.navigationController?.setNavigationBarHidden(true, animated: false)
//        UIFuncs.setBorder(views: buttonsNeedBorder, width: 1, cornerRadius: 15, color: #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginClick() {
        guard let _ = usernameText.text else{
            UIFuncs.setBorder(layer: usernameText.layer, width: 2, cornerRadius: 5, color: UIColor.red.cgColor)
            return
            
        }
        
        guard let _ = passwordText.text else{
            UIFuncs.setBorder(layer: passwordText.layer, width: 2, cornerRadius: 5, color: UIColor.red.cgColor)
            return
        }
        
        // MARK: authentication
        if (usernameText.text == "admin" && passwordText.text == "111111" ){
            self.launchMain()
            
        }
        
    }
    
    private func launchMain(){
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        if let vc = appDel.getViewControllerByName(storyboard: "Main", controllerName: "mainTabView"){
            appDel.switchRootViewController(rootViewController: vc
                , animated: true, completion: nil)
        }else{
            print("cannot find main view controller")
        }
        
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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
