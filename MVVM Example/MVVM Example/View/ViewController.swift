//
//  ViewController.swift
//  MVVM Example
//
//  Created by Shahzaib Mumtaz on 17/01/2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        Service.sharedInstance.GetData(tableViewName: tableView)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return Service.sharedInstance.numberOfRowsInSection()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PersonDataTableViewCell
        
        cell.PersonImage.LoadImage(urlString: Service.sharedInstance.arrayImageUrl[indexPath.row])
        cell.PersonName.text = Service.sharedInstance.arrayName[indexPath.row]
        cell.teamName.text = Service.sharedInstance.arrayTeam[indexPath.row]
        
        return cell
    }
}
