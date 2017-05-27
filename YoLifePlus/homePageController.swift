//
//  ViewController.swift
//  YoLifePlus
//
//  Created by Jucong He on 5/26/17.
//  Copyright © 2017 JucongHe. All rights reserved.
//

import UIKit

class homePageController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    fileprivate var screenSize:CGRect!
    fileprivate let categories = ["Food","Furniture","Rideshare","Housing"]
    
    @IBOutlet weak var tbView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenSize = UIScreen.main.bounds
        tbView.delegate = self
        tbView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? categoryCell {
            cell.configure(path: categories[indexPath.row], width: screenSize.width, height: (screenSize.height-64) * 0.25,cat:categories[indexPath.row])
            return cell
        } else {
            let cell = categoryCell()
            cell.configure(path: categories[indexPath.row], width: screenSize.width, height: (screenSize.height-64) * 0.25,cat:categories[indexPath.row])
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (screenSize.height-64) * 0.25
    }
    
}

