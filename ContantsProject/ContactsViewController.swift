//
//  ContactsViewController.swift
//  ContantsProject
//
//  Created by itisioslab on 02.07.2021.
//

import UIKit



class ContactsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data:[ContactCellData] = [
        ContactCellData("Jeremy", "Pallson", "Apple Corp", "+3 999 333 44-44", "Strange man"),
        ContactCellData("Andrew", "Franklin", "France aroma", "+5 876 234 24-87", "Work assistant"),
        ContactCellData("David", "Harvi", "Tower Inc", "+3 467 467 94-56", "Spam"),
        ContactCellData("Igor", "Yellow", "Olive farm 234", "+8 983 452 26-46", "Best friend"),
        ContactCellData("Peter", "Govers", "Peter's jummy", "+1 234 000 00-92", "Own business and wife")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Contacts"
    }
    
}



extension ContactsViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let contactDetailedViewController = storyboard?.instantiateViewController(identifier: "DetailedInformationViewController")as? DetailedInformationViewController else {
            return
        }
        contactDetailedViewController.contact = data[indexPath.row]
        present(contactDetailedViewController, animated: true)
    }
    
    
}

extension ContactsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else {
            return UITableViewCell()
        }
        cell.setData(data[indexPath.row])
        return cell
    }
}


struct ContactCellData {
    var firstName:String
    var secondName:String
    var workPlace:String
    var phoneNumber:String
    var comment:String
    
    init(_ firstName:String, _ secondName:String, _ workPlace:String, _ phoneNumber:String, _ comment:String) {
        self.firstName = firstName
        self.secondName = secondName
        self.workPlace = workPlace
        self.phoneNumber = phoneNumber
        self.comment = comment
    }
}
