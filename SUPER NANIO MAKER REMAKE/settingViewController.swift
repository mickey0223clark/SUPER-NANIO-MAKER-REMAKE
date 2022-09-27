//
//  settingViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by clark on R 4/09/13.
//

import UIKit

import Eureka

class settingViewController: FormViewController {
    
    var type : String = ""//String型変数の宣言
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("eureka")
        form
                +++ Section("ルーレット設定")
                <<< PushRow<String>(){
                $0.title = "停止までの時間を設定"//タイトル
                $0.options = ["ランダム","ゆっくり","ふつう","はやい"]//選択肢一覧
                $0.value = "ランダム"//初期状態で選択されている選択肢
                $0.selectorTitle = "項目を選択"//セレクタのタイトル
                self.type = $0.value ?? "type"
                //押された時の処理
                }.onPresent{ from, to in
                to.dismissOnSelection = true
                to.dismissOnChange = false
                }.onChange({ [unowned self] row in
                self.type = row.value ?? "type"
                })
//        form +++ Section("ルーレット設定")
//                <<< TextRow("Rowのタグ"){ row in
//                    row.title = "ルーレット停止までの時間"
//                    row.placeholder = "記入"
//                }
                
               

        // Do any additional setup after loading the view.
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
