//
//  rouletteViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by cl_umeda_020 on R 4/03/10.
//

import UIKit


class rouletteViewController: UIViewController {

    var number:Int=0
    var second:Double=0
    var count:Int=0
    var type : String = ""
    
    var str1 = ""
    var str2 = ""
    var str3 = ""
    var str4 = ""
    var str5 = ""
    var str6 = ""
    
    var text1 = ""
    var text2 = ""
    var text3 = ""
    var text4 = ""
    var text5 = ""
    var text6 = ""

    
    @IBOutlet var rulelabel:UILabel!
    @IBOutlet var rouletteView: UIImageView!
    @IBOutlet var backbutton:UIButton!
    @IBOutlet var startbutton: UIButton!
    @IBOutlet var detaillabel:UILabel!
    
    
// Expected declarationは関数の中でかけ！ってこと
    @IBAction func start() {
//        second = Double.random(in: 3...10)
//        count = Int.random(in: 1...6)
        
        print(second)
        print(count)
        
        print(str1)
        print(str2)
        print(str3)
        print(str4)
        print(str5)
        print(str6)
        
//        print(text1)
//        print(text2)
//        print(text3)
//        print(text4)
//        print(text5)
//        print(text6)
        
        rotation()
        rulelabel.text = "    "
        detaillabel.text = "    "
        //UIButtonを無効化
        startbutton.isEnabled = false
    }
    
    //回転のファンクション
    func rotation() {
        type = UserDefaults.standard.string(forKey: "設定")!
        print(type)
        //if ("ゆっくりが選択されてるなら"){second = Double.random(in: x...y) 　count = Int.random(in: a...b)}
        switch type{
         case ("ランダム"):
            second = Double.random(in: 3...10)
            count = Int.random(in: 1...6)
        case("ゆっくり"):
            second = Double.random(in: 7...10)
            count = Int.random(in: 1...6)
        case("ふつう"):
            second = Double.random(in: 5...8)
            count = Int.random(in: 1...6)
        case("はやい"):
            second = Double.random(in: 1...4)
            count = Int.random(in: 1...6)
        default:
            print("エラー")
        }
    
        
        UIView.animate(
            withDuration: second,
            animations: {
                self.number = Int.random(in: 1...360)
                print(self.number)
                
                for _ in 0...self.count{
                    self.rouletteView.transform = CGAffineTransform(rotationAngle: 180*CGFloat.pi/180)
                    self.rouletteView.transform = CGAffineTransform(rotationAngle: 360*CGFloat.pi/180)//360で1回転
                }
                
                self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat(self.number)*CGFloat.pi/180)
                
                
                // self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            
            },
            completion: { _ in
                
                //UIButtonを有効化
                self.startbutton.isEnabled = true
                
                switch self.number {
                case (1...60):
                    self.rulelabel.text = self.str6
                    self.detaillabel.text = self.text6
                  case (61...120):
                    self.rulelabel.text = self.str5
                    self.detaillabel.text = self.text5
                  case (121...180):
                    self.rulelabel.text = self.str4
                    self.detaillabel.text = self.text4
                  case (181...240):
                    self.rulelabel.text = self.str3
                    self.detaillabel.text = self.text3
                  case (241...300):
                    self.rulelabel.text = self.str2
                    self.detaillabel.text = self.text2
                  case (301...360):
                    self.rulelabel.text = self.str1
                    self.detaillabel.text = self.text1
                default:
                    self.rulelabel.text = "わからん"
                }
                print("OK")
                
            }
        )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 30, weight: .bold, scale: .large)
        let largeBoldPu = UIImage(systemName: "chevron.backward", withConfiguration: largeConfig)
        backbutton.setImage(largeBoldPu, for: .normal)
        // Do any additional setup after loading the view.
        startbutton.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    
    @IBAction func back (){
        self.dismiss(animated: true, completion:nil)
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
