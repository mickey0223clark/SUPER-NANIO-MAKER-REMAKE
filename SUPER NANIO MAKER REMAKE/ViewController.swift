//
//  ViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by cl_umeda_020 on R 4/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var settingbutton:UIButton!
    @IBOutlet var plusbutton:UIButton!
    
    @IBOutlet var rule1: UITextField!
    @IBOutlet var rule2: UITextField!
    @IBOutlet var rule3: UITextField!
    @IBOutlet var rule4: UITextField!
    @IBOutlet var rule5: UITextField!
    @IBOutlet var rule6: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let largeConfig1 = UIImage.SymbolConfiguration(pointSize: 140, weight: .bold, scale: .large)
        let largeBoldDoc = UIImage(systemName: "gearshape", withConfiguration: largeConfig1)
        settingbutton.setImage(largeBoldDoc, for: .normal)
 
        let largeConfig2 = UIImage.SymbolConfiguration(pointSize: 75, weight: .bold, scale: .large)
        let largeBoldPul = UIImage(systemName: "plus.circle", withConfiguration: largeConfig2)
        plusbutton.setImage(largeBoldPul, for: .normal)

        
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextView = segue.destination as! rouletteViewController
            nextView.str1 = rule1.text!
            nextView.str2 = rule2.text!
            nextView.str3 = rule3.text!
            nextView.str4 = rule4.text!
            nextView.str5 = rule5.text!
            nextView.str6 = rule6.text!

        }
    }
    
}

