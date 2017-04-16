//
//  MainViewController.swift
//  DouyuDemo
//
//  Created by w on 2017/4/16.
//  Copyright © 2017年 w. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC(stroyName: "Home");
        addChildVC(stroyName: "Live");
        addChildVC(stroyName: "Follow");
        addChildVC(stroyName: "Profile")
    }

    private func addChildVC(stroyName: String){
        
        let childVC = UIStoryboard(name: stroyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }

 

}
