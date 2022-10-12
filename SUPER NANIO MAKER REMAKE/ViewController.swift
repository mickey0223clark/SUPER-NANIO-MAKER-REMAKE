//
//  ViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by cl_umeda_020 on R 4/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var settingbutton:UIButton!
    @IBOutlet weak var plusbutton:UIButton!
    
    @IBOutlet var rule1: UITextField!
    @IBOutlet var rule2: UITextField!
    @IBOutlet var rule3: UITextField!
    @IBOutlet var rule4: UITextField!
    @IBOutlet var rule5: UITextField!
    @IBOutlet var rule6: UITextField!
    
    @IBOutlet var detail1: UITextField!
    @IBOutlet var detail2: UITextField!
    @IBOutlet var detail3: UITextField!
    @IBOutlet var detail4: UITextField!
    @IBOutlet var detail5: UITextField!
    @IBOutlet var detail6: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let largeConfig1 = UIImage.SymbolConfiguration(pointSize: 140, weight: .bold, scale: .large)
        let largeBoldDoc = UIImage(systemName: "gearshape", withConfiguration: largeConfig1)
        settingbutton.setImage(largeBoldDoc, for: .normal)
 
        let largeConfig2 = UIImage.SymbolConfiguration(pointSize: 75, weight: .bold, scale: .large)
        let largeBoldPul = UIImage(systemName: "plus.circle", withConfiguration: largeConfig2)
        plusbutton.setImage(largeBoldPul, for: .normal)

        //追加ボタン無効化
        //plusbutton.isEnabled = false
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setting(){
        rule1.text = "アサルトライフル縛り"
        rule2.text = "サブマシンガン縛り"
        rule3.text = "ショットガン縛り"
        rule4.text = "スナイパー縛り"
        rule5.text = "ピッケル縛り"
        rule6.text = "回復縛り"
        detail1.text = "アサルトライフル以外使用禁止！"
        detail2.text = "サブマシンガン以外使用禁止！"
        detail3.text = "ショットガン以外使用禁止！"
        detail4.text = "スナイパー以外使用禁止！"
        detail5.text = "ピッケル以外使用禁止！"
        detail6.text = "回復以外使用禁止！"
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
            nextView.text1 = detail1.text!
            nextView.text2 = detail2.text!
            nextView.text3 = detail3.text!
            nextView.text4 = detail4.text!
            nextView.text5 = detail5.text!
            nextView.text6 = detail6.text!
            print("ルール１\(rule1.text!)ルール２")
        }
    }
    
}
