//
//  PersonViewModel.swift
//  MVVM Example
//
//  Created by Shahzaib Mumtaz on 17/01/2022.
//

import Foundation
import UIKit

class Service: NSObject
{
    static let sharedInstance = Service()
    
    func GetAllPersonData(completion: @escaping ([PeraonModel]?, Error?) -> ())
    {
        let urlString = "https://simplifiedcoding.net/demos/marvel/"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response , error) in
            
            if let err = error
            {
                completion(nil, err)
                return
            }
            else
            {
                guard let data = data else { return }
                do
                {
                    let result = try JSONDecoder().decode([PeraonModel].self, from: data)
                    completion(result, nil)
                }
                catch
                {
                    completion(nil, error)
                }
            }
            }.resume()
    }
    
    var arrayImageUrl = [String]()
    var arrayName = [String]()
    var arrayTeam = [String]()
    var arrayRealName = [String]()
    var arrayFirstAppearence = [String]()
    var arrayCreatedby = [String]()
    var arrayPublisher = [String]()
    var arrayBio = [String]()
    
    func GetData(tableViewName: UITableView) {
        
        Service.sharedInstance.GetAllPersonData { (PeraonModel, error) in

            if let err = error
            {
                print(err)
                return
            }

            PeraonModel?.forEach()
            { (person) in
                
                self.arrayImageUrl.append(person.imageurl!)
                self.arrayName.append(person.name!)
                self.arrayTeam.append(person.team!)
                self.arrayRealName.append(person.realname!)
                self.arrayFirstAppearence.append(person.firstappearance)
                self.arrayCreatedby.append(person.createdby!)
                self.arrayPublisher.append(person.publisher!)
                self.arrayBio.append(person.bio!)
            }
            
            DispatchQueue.main.async {
                tableViewName.reloadData()
            }
        }
    }
    
    func numberOfRowsInSection() -> Int {
            return arrayName.count
    }
}

extension UIImageView
{
    func LoadImage(urlString : String)
    {
        guard let url = URL(string: urlString)else
        {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url)
            {
                if let image = UIImage(data: data)
                {
                    DispatchQueue.main.async
                    {
                        self?.image = image
                    }
                }
            }
        }
    }
}
