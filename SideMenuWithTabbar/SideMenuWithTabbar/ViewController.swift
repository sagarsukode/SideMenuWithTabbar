//
//  ViewController.swift
//  SideMenuWithTabbar
//
//  Created by Sagar Sukode on 04/12/19.
//  Copyright © 2019 Sagar Sukode. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //MARK:- Button Actions -
    @IBAction func SideMenuAction(sender: AnyObject)
    {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    
    
}

