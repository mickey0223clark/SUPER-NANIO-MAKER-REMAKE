//
//  rouletteViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by cl_umeda_020 on R 4/03/10.
//

import UIKit


class rouletteViewController: UIViewController {

    let score = 70
    
    @IBOutlet var label:UILabel!
    @IBOutlet weak var rouletteView: UIImageView!
    
// Expected declarationは関数の中でかけ！ってこと
    @IBAction func start() {
       
        rotation()
        
        switch score {
          case (90...100):
            label.text = "オレンジ"
         
          case (50...89):
            label.text = "みどり"
         
          case (1...49):
            label.text = "ピンク"
         
        default:
            label.text = "わからん"
        }
    }
    //回転のファンクション
    func rotation() {
            UIView.animate(withDuration: 1, animations: {

                self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)

                })

        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
