//
//  NoticeBrain.swift
//  VIPER Example
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import Foundation
import UIKit

class NoticeService: NSObject
{
    static let sharedInstance = NoticeService()
    
    func fetchJsonData(completion: @escaping ([record]?, Error?) -> ())
    {
        let urlString = "https://cat-fact.herokuapp.com/facts"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url)
        { (data, resp, error) in
            
            if let err = error
            {
                completion(nil, err)
                return
            }
            
            do
            {
                let posts = try JSONDecoder().decode([record].self, from: data!)
                completion(posts, nil)
            }
            catch
            {
                completion(nil, error)
            }
            }.resume()
    }
}
