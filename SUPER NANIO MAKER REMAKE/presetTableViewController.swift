//
//  presetTableViewController.swift
//  SUPER NANIO MAKER REMAKE
//
//  Created by clark on R 4/12/06.
//

import UIKit

class presetTableViewController: UIViewController,UITableViewDataSource {
    
    var savedate: UserDefaults! = UserDefaults.standard;
    var presetArray = [presetdate]()
    var cellnum: Int!
    //storyboardで扱うtableviewを宣言
    @IBOutlet var table:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonDecoder = JSONDecoder()
                    guard let data = UserDefaults.standard.data(forKey: "preset"),
                          let decodeData = try? jsonDecoder.decode([presetdate].self, from: data) else {
                        return
                    }
                    presetArray = decodeData
        
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
        return presetArray.count
    }
    //ID付きのセルを取得して、
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = presetArray[indexPath.row].prerule1
        
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        cellnum = indexPath.row
//        performSegue(withIdentifier: , sender: nil)
//    }
}
