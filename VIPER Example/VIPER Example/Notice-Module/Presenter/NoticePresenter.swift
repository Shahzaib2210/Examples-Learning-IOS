//
//  NoticePresenter.swift
//  VIPER Example
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import Foundation
import UIKit

class NoticePresenter: NSObject {
    
    static let sharedInstance = NoticePresenter()
  
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
    
    func GetData(tableViewName: UITableView) {
    
        NoticeService.sharedInstance.fetchJsonData()
        { (posts, error) in

            if let err = error
            {
                print(err)
                return
            }

            posts?.forEach()
            { (post) in

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
                tableViewName.reloadData()
            }
        }
    }
    
    func numberOfRowsInSection() -> Int {
            return arrayUser.count
    }
    
}
