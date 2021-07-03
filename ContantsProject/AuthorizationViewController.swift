//
//  ViewController.swift
//  ContantsProject
//
//  Created by itisioslab on 01.07.2021.
//

import UIKit

protocol AuthorizationDelegate{
    func authorized(_ username:String?, _ password:String?)
}

class AuthorizationViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var wrongParamsMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    let rigthUsername = "admin"
    let rigthPassword = "admin"
    
    
    @IBAction func signIn(_ sender: Any) {
        if username.text == rigthUsername && password.text == rigthPassword{
            
            guard let contactsViewController = storyboard?.instantiateViewController(identifier: "ContactsViewController")as? ContactsViewController else {
                return
            }
            
            navigationController?.pushViewController(contactsViewController, animated: true)
        }else{
            wrongParamsMessage.text = "Incorrect login or password!"
        }
    }
}


