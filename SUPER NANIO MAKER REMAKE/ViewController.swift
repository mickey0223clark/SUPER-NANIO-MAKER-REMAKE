//
//  ViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by cl_umeda_020 on R 4/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    var hairetuArray: [Nanio] = []
    var hairetuNumber = 0;
    
    @IBOutlet weak var settingbutton:UIButton!
    @IBOutlet weak var presetbutton:UIButton!
    @IBOutlet weak var sharebutton:UIButton!
    
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
        
        hairetuArray.append(Nanio(rule: "アサルトライフル縛り", detail: "アサルトライフル以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "サブマシンガン縛り", detail: "サブマシンガン以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "ショットガン縛り", detail: "ショットガン以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "スナイパー縛り", detail: "スナイパー以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "ピッケル縛り", detail: "ピッケル以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "回復縛り", detail: "回復以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "ライトマシンガン縛り", detail: "ライトマシンガン以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "レジェンド縛り", detail: "レジェンド以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "エピック縛り", detail: "エピック以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "レア縛り", detail: "レア以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "アンコモン縛り", detail: "アンコモン以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "コモン縛り", detail: "コモン以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "ミシック縛り", detail: "ミシック以外使用禁止！！"))
        hairetuArray.append(Nanio(rule: "エキゾチック縛り", detail: "エキゾチック以外使用禁止！！"))
        
        hairetuNumber = hairetuArray.count
        print("\(hairetuArray.count)と\(hairetuNumber)")
        
        let largeConfig1 = UIImage.SymbolConfiguration(pointSize: 50, weight: .bold, scale: .large)
        let largeBoldDoc = UIImage(systemName: "gearshape", withConfiguration: largeConfig1)
        settingbutton.setImage(largeBoldDoc, for: .normal)
 
        let largeConfig2 = UIImage.SymbolConfiguration(pointSize: 50, weight: .bold, scale: .large)
        let largeBoldPul1 = UIImage(systemName: "tablecells", withConfiguration: largeConfig2)
        presetbutton.setImage(largeBoldPul1, for: .normal)

        let largeConfig3 = UIImage.SymbolConfiguration(pointSize: 50, weight: .bold, scale: .large)
        let largeBoldPul2 = UIImage(systemName: "square.and.arrow.up", withConfiguration: largeConfig3)
        sharebutton.setImage(largeBoldPul2, for: .normal)
        //追加ボタン無効化
        //plusbutton.isEnabled = false
        
        // Do any additional setup after loading the view.
    }
    
    func set(){
        rule1.text = hairetuArray[0].rule
        rule2.text = hairetuArray[1].rule
        rule3.text = hairetuArray[2].rule
        rule4.text = hairetuArray[3].rule
        rule5.text = hairetuArray[4].rule
        rule6.text = hairetuArray[5].rule
        detail1.text = hairetuArray[0].detail
        detail2.text = hairetuArray[1].detail
        detail3.text = hairetuArray[2].detail
        detail4.text = hairetuArray[3].detail
        detail5.text = hairetuArray[4].detail
        detail6.text = hairetuArray[5].detail
    }
    
    @IBAction func random(){
        
//        allrules.shuffle()
//        print(allrules)
//        rule1.text = allrules[0]
//        rule2.text = allrules[1]
//        rule3.text = allrules[2]
//        rule4.text = allrules[3]
//        rule5.text = allrules[4]
//        rule6.text = allrules[5]
        
//        let arraySlicedAllrules: ArraySlice = allrules.prefix(5)
//        let slicedAllrules = Array(arraySlicedAllrules)
//        print(slicedAllrules)    // [1, 7, 9, 4, 6]
        
            hairetuArray.shuffle()
//          print(hairetuArray)
        
//          let arraySlicedAllrules: ArraySlice = allrules.prefix(5)
//          let slicedAllrules = Array(arraySlicedAllrules)
//          print(slicedAllrules)    // [1, 7, 9, 4, 6]
        set()
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
    
    @IBAction func share(){
       // let sharetext = "ルール1" + rule1.text!
       // let shareurl = "url"
        let image = takeScreenShot()
        let sharetext = "Xcode動作チェック\n" + rule1.text!
        let shareurl = "yu-------a---rueru"
        
        let activityItems = [sharetext,shareurl,image]as[Any]
        //print(activityItems)
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
//        activityVC.popoverPresentationController?.sourceView = activInd
        if UIDevice.current.userInterfaceIdiom == .pad {
              let screenSize = UIScreen.main.bounds
              if let popPC = activityVC.popoverPresentationController {
                     popPC.sourceView = activityVC.view
                     popPC.barButtonItem = .none
//                  popPC.sourceRect = CGRect(x:screenSize.size.width/2, y: screenSize.size.height-200, width: 0, height: 0)
                  //popPC.sourceRect = activityVC.accessibilityFrame
                  popPC.sourceRect = CGRect(x:0, y:0, width: 0, height: 0)
              }
          }
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        //let rootVC = windowScene?.windows.first?.rootViewController
        self.present(activityVC, animated: true, completion: nil)
    }
    
    func takeScreenShot() -> UIImage {
        let width: CGFloat = UIScreen.main.bounds.size.width
        let height: CGFloat = UIScreen.main.bounds.size.height
        let size = CGSize(width: width, height: height)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        let screenShotImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return screenShotImage
    }
    
    @IBAction func refresh(){
        rule1.text = ""
        rule2.text = ""
        rule3.text = ""
        rule4.text = ""
        rule5.text = ""
        rule6.text = ""
        detail1.text = ""
        detail2.text = ""
        detail3.text = ""
        detail4.text = ""
        detail5.text = ""
        detail6.text = ""
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
            //print("ルール１\(rule1.text!)ルール２")
            print("ルール1" + rule1.text!)
        }
    }
    
}
