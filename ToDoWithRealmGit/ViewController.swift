//
//  ViewController.swift
//  ToDoWithRealmGit
//
//  Created by Vineeth Xavier on 11/23/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

//toDoIdentifier

import UIKit
import CoreData //ya i am using reaml :D
import RealmSwift
import YouTubePlayer
import GoogleSignIn

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabViewDel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabViewDel.dataSource = self
        tabViewDel.delegate = self
        
        let nibName = UINib(nibName: "toDoCell", bundle: nil)
        tabViewDel.register(nibName, forCellReuseIdentifier: "toDoIdentifier")
    }
    
    var itemNameTempArray:[String] = ["Apple","Ball","Cat","Dog","End"]
    var itemNumberTemArray:[String] = ["1","2","3","4","5"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemNameTempArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabViewDel.dequeueReusableCell(withIdentifier: "toDoIdentifier", for: indexPath) as! toDoCell
        cell.commonInit(itemNumberTemArray[indexPath.row], itemNme: itemNameTempArray[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    



}

