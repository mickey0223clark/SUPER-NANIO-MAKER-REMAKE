//
//  presetTableViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by clark on R 4/12/06.
//

import UIKit

class presetTableViewController: UIViewController,UITableViewDataSource {
    
    //storyboardで扱うtableviewを宣言
    @IBOutlet var table:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューのデータソースメソッドはviewcontrollerクラスに書くよ、という設定
        table.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    //ID付きのセルを取得して、
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }
    
}
