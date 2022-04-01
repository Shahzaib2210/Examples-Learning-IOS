//
//  ViewController.swift
//  VIPER Example
//
//  Created by Shahzaib Mumtaz on 17/01/2022.
//

import UIKit

class ViewController: UIViewController {
     
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        NoticePresenter.sharedInstance.GetData(tableViewName: tableView)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NoticePresenter.sharedInstance.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! NoticeTableViewCell
        
        cell.LabelID.text = NoticePresenter.sharedInstance.arrayUser[indexPath.row]
        cell.Labeltitle.text = NoticePresenter.sharedInstance.arraySource[indexPath.row]
        cell.labelBrief.text =  NoticePresenter.sharedInstance.arrayText[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DVViewController") as! DVViewController
        
        vc.variableVerified = NoticePresenter.sharedInstance.arrayVerified[indexPath.row]
        vc.variableSentCount = NoticePresenter.sharedInstance.arraySentCount[indexPath.row]
        vc.variableId = NoticePresenter.sharedInstance.arrayId[indexPath.row]
        vc.variableUser = NoticePresenter.sharedInstance.arrayUser[indexPath.row]
        vc.variableText = NoticePresenter.sharedInstance.arrayText[indexPath.row]
        vc.variableV = NoticePresenter.sharedInstance.arrayV[indexPath.row]
        vc.variableSource = NoticePresenter.sharedInstance.arraySource[indexPath.row]
        vc.variableUpdateat = NoticePresenter.sharedInstance.arrayUpdateat[indexPath.row]
        vc.variableType = NoticePresenter.sharedInstance.arrayType[indexPath.row]
        vc.variableCreated = NoticePresenter.sharedInstance.arrayCreated[indexPath.row]
        vc.variableDeleted = NoticePresenter.sharedInstance.arrayDeleted[indexPath.row]
        vc.variableUsed = NoticePresenter.sharedInstance.arrayUsed[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
