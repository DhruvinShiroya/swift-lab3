//
//  ViewController.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab03_Ex1
//
//  Created by dhruvin on 2023-07-16.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var errLogin: UILabel!
    
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CheckCredential(_ sender: Any) {
        errLogin.text = ""
        if(txtPassword.text == "password" && txtUserName.text == "admin"){
            self.performSegue(withIdentifier: "project", sender: self)
        }else{
            errLogin.text = "You have entered wrong credential"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "project" {
            if let projectConroller = segue.destination as? ProjectPageController{
                projectConroller.userName = txtUserName.text!
            }
        }
    }
}

