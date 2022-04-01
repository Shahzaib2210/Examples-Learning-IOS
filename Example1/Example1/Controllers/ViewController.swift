//
//  ViewController.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 05/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayVerified = [Bool]()
    var arraySentCount = [Int]()
    var arrayId = [String]()
    var arrayUser = [String]()
    var arrayText = [String]()
    var arrayV = [Int]()
    var arraySource = [String]()
    var arrayUpdateat = [String]()
    var arrayType = [String]()
    var arrayCreated = [String]()
    var arrayDeleted = [Bool]()
    var arrayUsed = [Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        fetchJsonData()
        { (posts, error) in

            if let err = error
            {
                print(err)
                return
            }

            posts?.forEach()
            { (post) in
                
                print(post.text)
                
                self.arrayVerified.append(post.status.verified)
                self.arraySentCount.append(post.status.sentCount)
                self.arrayId.append(post.id)
                self.arrayUser.append(post.user)
                self.arrayText.append(post.text)
                self.arrayV.append(post.v)
                self.arraySource.append(post.source)
                self.arrayUpdateat.append(post.updatedAt)
                self.arrayType.append(post.type)
                self.arrayCreated.append(post.createdAt)
                self.arrayDeleted.append(post.deleted)
                self.arrayUsed.append(post.used)
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
//        tableView.estimatedRowHeight = 400
//        tableView.rowHeight = UITableView.automaticDimension
    }
    
    func fetchJsonData(completion: @escaping ([record]?, Error?) -> ())
    {
        let urlString = "https://cat-fact.herokuapp.com/facts"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            
            if let err = error {
                completion(nil, err)
                return
            }
            

            do {
                let posts = try JSONDecoder().decode([record].self, from: data!)
                completion(posts, nil)
            } catch {
                completion(nil, error)
            }
            }.resume()
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//
//        return UITableView.automaticDimension
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DataTableViewCell
        
        cell.labelVerified.text = String(arrayVerified[indexPath.row])
        cell.labelSentcount.text = String(arraySentCount[indexPath.row])
        cell.labelId.text = arrayId[indexPath.row]
        cell.lblUser.text = arrayUser[indexPath.row]
        cell.labelText.text = arrayText[indexPath.row]
        cell.labelV.text = String(arrayV[indexPath.row])
        cell.labelSource.text = arraySource[indexPath.row]
        cell.labelUpdatedat.text = arrayUpdateat[indexPath.row]
        cell.labelType.text = arrayType[indexPath.row]
        cell.labelCreatedAt.text = arrayCreated[indexPath.row]
        cell.labelDeleted.text = String(arrayDeleted[indexPath.row])
        cell.labelUsed.text = String(arrayUsed[indexPath.row])
        
        return cell
    }
}
