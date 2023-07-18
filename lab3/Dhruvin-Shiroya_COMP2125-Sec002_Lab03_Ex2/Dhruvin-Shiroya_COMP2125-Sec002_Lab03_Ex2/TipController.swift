//
//  TipController.swift
//  Dhruvin-Shiroya_COMP2125-Sec002_Lab03_Ex2
//
//  Created by dhruvin on 2023-07-17.
//

import UIKit

class TipController: UIViewController {
    
    
    @IBOutlet weak var txtBillAmount: UITextField!
    
    @IBOutlet weak var txtTotalPerson: UITextField!
    
    @IBOutlet weak var sliderTip: UISlider!
    
    @IBOutlet weak var lblSliderPercent: UILabel!
    
    @IBOutlet weak var lblDefaultTip: UILabel!
    
    @IBOutlet weak var lblDefaultTotal: UILabel!
    
    @IBOutlet weak var lblIndividualTip: UILabel!
    
    @IBOutlet weak var lblCusomTip: UILabel!
    
    @IBOutlet weak var lblCustomTotal: UILabel!
    
    @IBOutlet weak var lblCustomIndiTip: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSliderPercent.text = String(format: "%2.2f%%", sliderTip.value)
    }

    @IBAction func changeBIllAmount(_ sender: Any) {
        calculateTip()
        
    }
    
    @IBAction func changePerson(_ sender: Any) {
        calculateTip()
    }
   
    
    @IBAction func changeTip(_ sender: Any) {
        lblSliderPercent.text = String(format: "%2.2f%%", sliderTip.value)
        
        if(Int(sliderTip.value) > 0){
            calculateTip()
        }
        
    }
    
    // calculate tip and populate all the lable on change of field
    func calculateTip(){
        let billAmount = Float(txtBillAmount.text!)
        let partyNum = Int(txtTotalPerson.text!) ?? 1
        let customeTipPercent = Float(sliderTip.value)
        
        // find the default 15% tip
        let defaultTip = (billAmount! / 100) * 15
        lblDefaultTip.text = String(defaultTip)
        
        
        // find default tip total
        lblDefaultTotal.text = String(defaultTip + billAmount!)
        
        // find individualt tip
        lblIndividualTip.text = String(format: "%2.2f",(defaultTip + billAmount!) / Float(partyNum))
        
        // find the custom tip
        let customTip = (billAmount! / 100) * customeTipPercent
        lblCusomTip.text = String(format: "%2.2f" ,customTip)
        
        
        // find individual tip total
        lblCustomTotal.text = String(format: "%2.2f" ,customTip + billAmount!)
        
        // find individual custom tip
        lblCustomIndiTip.text = String(format: "%2.2f", (customTip + billAmount!) / Float(partyNum))
    }
    
}

