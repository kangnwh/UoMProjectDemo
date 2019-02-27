//
//  SearchHistoryViewController.swift
//  GraphicMap
//
//  Created by Kang Ning on 27/2/19.
//  Copyright © 2019 UoM. All rights reserved.
//

import UIKit

class SearchHistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
