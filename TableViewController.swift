//
//  TableViewController.swift
//  Tableview
//
//  Created by Jomms on 30/12/20.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let mydata = ["first","second","third","four","five"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblviw.dequeueReusableCell(withIdentifier:"cell", for:indexPath)
      //  cell.textLabel?.text = mydata[indexPath.row]
        cell.textLabel?.text = "demo"
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .red
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    @IBOutlet weak var tblviw: UITableView!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblviw.delegate = self
        tblviw.dataSource = self
        
        
    }
    


}
