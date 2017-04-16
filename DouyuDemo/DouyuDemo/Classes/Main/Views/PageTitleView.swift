//
//  PageTitleView.swift
//  DouyuDemo
//
//  Created by w on 2017/4/16.
//  Copyright © 2017年 w. All rights reserved.
//

import UIKit

fileprivate let scrollLineH:CGFloat = 2

class PageTitleView: UIView {

    //MARK: - 定义构造函数
    fileprivate var titles : [String]
    //MARK: -  懒加载属性
    fileprivate lazy var titleLabel: [UILabel] = [UILabel]()
    
    fileprivate lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    
    fileprivate lazy var scrollLine: UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    //自定义构造函数
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// MARK：设置UI界面
extension PageTitleView {
    
    fileprivate func setupUI() {
        
        
        addSubview(scrollView)
        scrollView.frame = bounds
        //添加title对应的Label
        setupTitleLbels()
        
        setupBottomMenuAndScrollLine()
        
    }
    
    //添加TieleLabel
    private func setupTitleLbels() {
        
        let labelW: CGFloat = frame.width / (CGFloat)(titles.count)
        let labelH: CGFloat = frame.height - scrollLineH
        let labelY: CGFloat = 0
        
        for (index, title) in titles.enumerated(){
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            let labelX: CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            scrollView.addSubview(label)
            titleLabel.append(label)
        
        }
        
    }
    
    //添加底线和滚动线
    private func setupBottomMenuAndScrollLine(){
        //底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH:CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)
        
        //滚动线
        guard let firstLabel = titleLabel.first else {
            return
        }
        firstLabel.textColor = UIColor.orange
        scrollView.addSubview(scrollLine)
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - scrollLineH, width: firstLabel.frame.width, height: scrollLineH)
    }
    
    
}
