//
//  ViewController.swift
//  ToDoWithRealmGit
//
//  Created by Vineeth Xavier on 11/23/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

//#4 commit
/*
 1. added bar button
 2. added addVC- with 2 text fireld and 2 btns
 */

import UIKit
import CoreData //ya i am using reaml :D
import RealmSwift
import YouTubePlayer
import GoogleSignIn

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabViewDel: UITableView!
    @IBAction func barBtnItem(_ sender: UIBarButtonItem) {
        //loading addVC.swift
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "addVCID") as UIViewController
        // .instantiatViewControllerWithIdentifier() returns AnyObject! this must be downcast to utilize it
        self.present(viewController, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tabViewDel.reloadData()
        tabViewDel.dataSource = self
        tabViewDel.delegate = self
        
        
        let nibName = UINib(nibName: "toDoCell", bundle: nil)
        tabViewDel.register(nibName, forCellReuseIdentifier: "toDoIdentifier")
        
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let realm = try! Realm()
        let allData = realm.objects(Items.self)
        return allData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabViewDel.dequeueReusableCell(withIdentifier: "toDoIdentifier", for: indexPath) as! toDoCell
        let realm = try! Realm()
        let allData = realm.objects(Items.self)
        
        let num = allData[indexPath.row].itemCountObj
        let val = allData[indexPath.row].itemNameObj
        
        //get sorted data on tableview
        //refresh tableview after insertion
        
        cell.commonInit(itemNum: num, itemNme: val)   //toDoCell.swift function
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }

}

