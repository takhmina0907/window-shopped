//
//  ViewController.swift
//  window-shopper
//
//  Created by Takhmina Talipova on 7/20/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resLBl: UILabel!
    
    @IBOutlet weak var hours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        // create button programaticaly
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)//always use set title!
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resLBl.isHidden = true
        hours.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{//local variables same name
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resLBl.isHidden = false
                hours.isHidden = false
                resLBl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        resLBl.isHidden = true
        hours.isHidden = true
        wageTxt.text = wageTxt.placeholder
        priceTxt.text = priceTxt.placeholder
    }
    
}

