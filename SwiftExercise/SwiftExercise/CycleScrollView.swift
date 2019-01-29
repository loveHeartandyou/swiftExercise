//
//  CycleScrollView.swift
//  SwiftExercise
//
//  Created by apple on 2019/1/28.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class CycleScrollView: UIView, UIScrollViewDelegate {
    
    let scrollView:UIScrollView = UIScrollView()
    var _current:NSInteger = 0
    var current:NSInteger {
        set {
            _current = newValue
        }
        get {
            return _current
        }
    }
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    //加载子视图
    func setupSubViews() {
        scrollView.delegate = self
        scrollView.frame = bounds
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: bounds.size.width * 3, height: bounds.size.height)
        scrollView.contentOffset = CGPoint(x: bounds.size.width, y: 0)
        addSubview(scrollView)
    }
    
    //UIScrollViewDelegate
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("begin dragging")
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("end dragging")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("end dragging will decelerates")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("begin decelerate")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("end decelerate")
    }
    
    override func layoutSubviews() {
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
