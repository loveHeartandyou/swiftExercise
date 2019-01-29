//
//  CycleScrollViewItem.swift
//  SwiftExercise
//
//  Created by apple on 2019/1/28.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class CycleScrollViewItem: UIScrollView {
    
    let imageView:UIImageView = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    // 加载子视图
    func setupSubView() {
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
