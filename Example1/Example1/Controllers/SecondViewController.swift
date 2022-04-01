//
//  SecondViewController.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 07/01/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayImageUrl = [String]()
    var arrayName = [String]()
    var arrayTeam = [String]()
    var arrayRealName = [String]()
    var arrayFirstAppearence = [String]()
    var arrayCreatedby = [String]()
    var arrayPublisher = [String]()
    var arrayBio = [String]()
    
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
                
                print(post.name)
                
                self.arrayImageUrl.append(post.imageurl)
                self.arrayName.append(post.name)
                self.arrayTeam.append(post.team)
                self.arrayRealName.append(post.realname)
                self.arrayFirstAppearence.append(post.firstappearance)
                self.arrayCreatedby.append(post.createdby)
                self.arrayPublisher.append(post.publisher)
                self.arrayBio.append(post.bio)
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func fetchJsonData(completion: @escaping ([Peraon]?, Error?) -> ())
    {
        let urlString = "https://simplifiedcoding.net/demos/marvel/"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            
            if let err = error {
                completion(nil, err)
                return
            }
            
            do {
                let posts = try JSONDecoder().decode([Peraon].self, from: data!)
                completion(posts, nil)
            } catch {
                completion(nil, error)
            }
            }.resume()
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PersonTableViewCell
        
        cell.personImage.load(urlString: arrayImageUrl[indexPath.row])
        cell.labelName.text = arrayName[indexPath.row]
        cell.labelTeam.text = arrayTeam[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.selectedImage = arrayImageUrl[indexPath.row]
        vc.selectedName = arrayName[indexPath.row]
        vc.selectedTeam = arrayTeam[indexPath.row]
        vc.selectedRealName = arrayRealName[indexPath.row]
        vc.selectedFirstAppearence = arrayFirstAppearence[indexPath.row]
        vc.selectedCreatedBy = arrayCreatedby[indexPath.row]
        vc.selectedPublisher = arrayPublisher[indexPath.row]
        vc.selectedBio = arrayBio[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
