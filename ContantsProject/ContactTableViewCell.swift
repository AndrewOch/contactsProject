//
//  ContactTableViewCell.swift
//  ContantsProject
//
//  Created by itisioslab on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

   @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(_ contact: ContactCellData) {
        name.text = contact.firstName
        phone.text = contact.phoneNumber
    }

}
