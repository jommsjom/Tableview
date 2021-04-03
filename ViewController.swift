//
//  ViewController.swift
//  Tableview
//
//  Created by Jomms on 30/12/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviw.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        cell.textLabel?.text = "demo one"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 100
    }
    
  /*  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let txt = UITextView()
        txt.text = "Section demo\(section)"
        txt.textAlignment = .center
        txt.backgroundColor = .black
    return txt
    } */
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame:CGRect(x:0, y: 0, width:view.frame.size.width, height:100))
        header.backgroundColor = .blue
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.backgroundColor = .red
        lbl.text = "Demo\(section)"
        lbl.textColor = .black
        header.addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.topAnchor.constraint(equalTo:header.topAnchor,constant:7).isActive = true
        lbl.leadingAnchor.constraint(equalTo:header.leadingAnchor,constant:100).isActive = true
        lbl.widthAnchor.constraint(equalToConstant:80).isActive = true
        lbl.heightAnchor.constraint(equalToConstant:50).isActive = true
        lbl.contentMode = .scaleAspectFit
        return header
        
    }
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                let storyboard = UIStoryboard(name : "Main", bundle: nil)
                let  vc = storyboard.instantiateViewController(withIdentifier: "Tableview") as! TableViewController

               self.navigationController?.pushViewController(vc, animated: true)
        }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    
    private let tableviw:UITableView = {
        let tbl = UITableView()
        tbl.register(UITableViewCell.self, forCellReuseIdentifier:"cell")
        return tbl
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(tableviw)
        tableviw.dataSource = self
        tableviw.delegate = self
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableviw.frame = view.bounds
    }
    
    
    
    
    

}

