//
//  addVC.swift
//  ToDoWithRealmGit
//
//  Created by Vineeth Xavier on 11/24/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit
import RealmSwift
class addVC: UIViewController {

    @IBOutlet weak var addItemOutlet: UITextField!
    @IBOutlet weak var addCountOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addCountOutlet.keyboardType = UIKeyboardType.numberPad
        
    }

    @IBAction func cancelBtn(_ sender: UIButton) {

        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        if (addCountOutlet.text != "" && addItemOutlet.text != ""){
            let objSaveFile = Items() //Items is the class name
            objSaveFile.itemCountObj = addCountOutlet.text!
            objSaveFile.itemNameObj = addItemOutlet.text!
            let realm = try! Realm()
            try! realm.write {
                realm.add(objSaveFile)
            }
            //reload table view
            //add alert saved before dismis
            dismiss(animated: true, completion: nil)
            
        }
    }
}
