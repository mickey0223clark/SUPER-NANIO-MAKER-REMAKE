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


}

