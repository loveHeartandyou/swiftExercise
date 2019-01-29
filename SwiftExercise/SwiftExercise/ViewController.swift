//
//  ViewController.swift
//  SwiftExercise
//
//  Created by apple on 2018/12/24.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {

    var scrollView:CycleScrollView?
    
    typealias Position = CGPoint
    typealias Distance = CGFloat
    
    typealias Region = (Position) -> Bool
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "首页"
        setupSubViews()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupSubViews() -> Void {
        scrollView = CycleScrollView(frame: view.bounds)
        scrollView?.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
        view.addSubview(scrollView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

