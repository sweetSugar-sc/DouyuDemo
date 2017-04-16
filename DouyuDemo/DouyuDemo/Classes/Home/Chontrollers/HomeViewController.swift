//
//  HomeViewController.swift
//  DouyuDemo
//
//  Created by w on 2017/4/16.
//  Copyright © 2017年 w. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }

}

// Mark: - 设置UI界面
extension HomeViewController{
    
     func setupUI() {
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        //设置左Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
       //设置右Item
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", hightImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", hightImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", hightImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
    
}
