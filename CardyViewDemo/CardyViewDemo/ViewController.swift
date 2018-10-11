//
//  ViewController.swift
//  CardyViewDemo
//
//  Created by 박길남 on 2018. 7. 17..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import UIKit
import CardyView

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cellDatas:[CellData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
        
        setCellDatas()
        
        CardyViewCell.register(tableView: tableView)
    }
    
    func setTableView() {
        tableView.initialCardyView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 30
    }
    
    func setCellDatas() {
        cellDatas.append(CellData(icon: UIImage(named: "1icon.png"), title: "My MacBook", contents: UIImage(named: "1.jpg")))
        cellDatas.append(CellData(icon: UIImage(named: "2icon.png"), title: "Gray emotion", contents: UIImage(named: "2.jpg")))
        cellDatas.append(CellData(icon: UIImage(named: "3icon.png"), title: "Thorn", contents: UIImage(named: "3.jpg")))
        cellDatas.append(CellData(icon: UIImage(named: "4icon.png"), title: "Rock", contents: UIImage(named: "4.jpg")))
        cellDatas.append(CellData(icon: UIImage(named: "5icon.png"), title: "Organized", contents: UIImage(named: "5.jpg")))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CardyViewCell.dequeueReusableCell(tableView: tableView) as! CardyViewCell
        cell.setData(data: cellDatas[indexPath.row])
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

