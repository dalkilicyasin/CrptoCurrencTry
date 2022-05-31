//
//  ViewController.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 4.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var apiKey = "BA3B1E95-EC4F-4BAD-936E-F02A23A9F9CF"
    var cyriptoList : [CyriptoResponseModel] = []
    var templistName = ["BTC","ETH"]
    var templistPrice = ["10","20"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("asfaf")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(CyriptoTableViewCell.nib, forCellReuseIdentifier: CyriptoTableViewCell.identifier)
    }
    @IBAction func buttonClicked(_ sender: Any) {
        let cyriptoRequestModel = CyriptoRequestModel.init(apikey: self.apiKey)
        NetworkManager.sendGetRequestArray(url: NetworkManager.BASEURL, endPoint: .GetCyripto, method: .get, parameters: cyriptoRequestModel.requestPathString()) { (response : [CyriptoResponseModel]) in
            if response.count > 0 {
                self.cyriptoList = response
              
                self.tableView.reloadData()
            }else {
                let alert = UIAlertController(title: "Error", message: "Please Check Date and ZReport No", preferredStyle:UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
        
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if cyriptoList.count > 0 {
           return self.cyriptoList.count
        }
        return self.templistName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CyriptoTableViewCell.identifier) as! CyriptoTableViewCell
        if self.cyriptoList.count > 0 {
            cell.labelName.text = cyriptoList[indexPath.row].name
            cell.labelPrice.text = String(cyriptoList[indexPath.row].price_usd ?? 0.00)
            return cell
        }else {
            cell.labelName.text = templistName[indexPath.row]
            cell.labelPrice.text = templistPrice[indexPath.row]
            return cell
        }
           
    }
    
    
}
