//
//  TableView.swift
//  SwiftExercise
//
//  Created by apple on 2018/12/24.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class TableView: UIView, UITableViewDelegate, UITableViewDataSource {
    var name: String = "" {
        willSet {
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _data == nil ? 0 : _data!.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.classForCoder()), for: indexPath)
        let dic:NSDictionary = data?.object(at: indexPath.row) as! NSDictionary
        cell.textLabel?.text = (dic["name"] as! String)
        return cell
    }
    private var _data: NSArray?
    
    func setName(name: String?) -> Int {
        self.name = name!
        return 0;
    }
    
    
    var tableView: UITableView?
    
    var data: NSArray? {
        willSet {
            _data = newValue
        }
        didSet {
            print("初始化")
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView = UITableView.init(frame: self.bounds)
        tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: NSStringFromClass(UITableViewCell.classForCoder()))
        tableView?.delegate = self
        tableView?.dataSource = self
        addSubview(tableView!)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
