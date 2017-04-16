//
//  UIBarButtonItem-Extention.swift
//  DouyuDemo
//
//  Created by w on 2017/4/16.
//  Copyright © 2017年 w. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    //便利构造函数，其中含有一个设计的构造函数
    convenience init(imageName: String, hightImageName: String = "", size: CGSize = CGSize.zero) {
        //创建Button
        let btn = UIButton()
        //设置btn图片
        btn.setImage(UIImage(named: imageName), for: .normal)
        if hightImageName != "" {
            btn.setImage(UIImage(named: hightImageName), for: .highlighted)
        }
        //设置btn大小
        if size != CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }else {
            btn.sizeToFit()
        }
        self.init(customView: btn)
    }
}
