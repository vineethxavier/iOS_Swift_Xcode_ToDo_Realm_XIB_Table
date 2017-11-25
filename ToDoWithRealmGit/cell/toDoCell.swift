//
//  toDoCell.swift
//  ToDoWithRealmGit
//
//  Created by Vineeth Xavier on 11/23/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class toDoCell: UITableViewCell {

    @IBOutlet weak var itemNumber: UILabel!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemQuantity: UITextField!
    
    func commonInit(itemNum itemNo:String, itemNme:String ){
        self.itemNumber.text = itemNo
        self.itemName.text = itemNme
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
