//
//  HomeViewController.swift
//  DouyuDemo
//
//  Created by w on 2017/4/16.
//  Copyright © 2017年 w. All rights reserved.
//

import UIKit

private let kTitleViewH: CGFloat = 40

class HomeViewController: UIViewController {

    //MARK: - 懒加载属性  
    fileprivate lazy var pageTitleView: PageTitleView = {
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH , width: kScreenW, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        return titleView
    }()

    
    //MARK: - 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }

}

// Mark: - 设置UI界面
extension HomeViewController{
    
    fileprivate func setupUI() {
        
        automaticallyAdjustsScrollViewInsets = false
        setupNavigationBar()
        view.addSubview(pageTitleView)
       
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
