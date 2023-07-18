//
//  ProjectPageController.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab03_Ex1
//
//  Created by dhruvin on 2023-07-17.
//

import UIKit

class ProjectPageController: UIViewController {

    @IBOutlet weak var txtProjectName: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtProjectDuration: UITextField!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnProjectSub: UIButton!
    @IBOutlet weak var txtProjectOut: UITextView!
    @IBOutlet weak var errProject: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtProjectOut.text = userName
        // Do any additional setup after loading the view.
    }
    
    // when project is added update the value
    @IBAction func addProject(_ sender: Any) {
        if( txtProjectName.text != nil && Int(txtProjectDuration.text!) ?? 0 > 0 && txtCity.text != nil){
            txtProjectOut.text = "Project Name: " + txtProjectName.text! + "\nProject Duration: " + txtProjectDuration.text! + "\nCity: " + txtCity.text!
        }else{
            errProject.text = "You have missed the field"
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
