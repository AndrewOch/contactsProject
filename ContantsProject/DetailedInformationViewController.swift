//
//  DetailedInformationViewController.swift
//  ContantsProject
//
//  Created by itisioslab on 02.07.2021.
//

import UIKit

class DetailedInformationViewController: UIViewController {

    
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var workPlace: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var comment: UITextView!
    
    var contact: ContactCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = contact?.firstName
        secondName.text = contact?.secondName
        workPlace.text = contact?.workPlace
        phone.text = contact?.phoneNumber
        comment.text = contact?.comment
        
    }
    
}
