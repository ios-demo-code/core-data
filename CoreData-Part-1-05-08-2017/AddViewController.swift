//
//  AddViewController.swift
//  CoreData-Part-1-05-08-2017
//
//  Created by Soeng Saravit on 8/5/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addUserName(_ sender: Any) {
        
        let user = User(context: context)
        user.username = self.userNameTextField.text
        
        appDelegate.saveContext()
        _ = self.navigationController?.popViewController(animated: true)
        
    }

}
