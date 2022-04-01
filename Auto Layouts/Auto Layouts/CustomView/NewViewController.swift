//
//  NewViewController.swift
//  Auto Layouts
//
//  Created by Shahzaib Mumtaz on 12/01/2022.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreateView()
    }
    
    func CreateView() {
        
        let Row = UILabel()
        Row.text = "Row"
        Row.autoresizingMask = .flexibleWidth
        Row.font = UIFont.systemFont(ofSize: 35)
        Row.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(Row)
        
        NSLayoutConstraint.activate([
        
        Row.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
        Row.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        
        let AustralianShepherd = UILabel()
        AustralianShepherd.text = "Australian Shepherd"
        AustralianShepherd.autoresizingMask = .flexibleWidth
        AustralianShepherd.font = UIFont.systemFont(ofSize: 20)
        AustralianShepherd.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(AustralianShepherd)
        
        NSLayoutConstraint.activate([
        
        AustralianShepherd.topAnchor.constraint(equalTo: Row.bottomAnchor, constant: 8),
        AustralianShepherd.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        let play = UILabel()
        play.text = "Playing at the Dog Park Island"
        play.autoresizingMask = .flexibleWidth
        play.font = UIFont.systemFont(ofSize: 25)
        play.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(play)
        
        NSLayoutConstraint.activate([
        
        play.topAnchor.constraint(equalTo: AustralianShepherd.bottomAnchor, constant: 8),
        play.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        play.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20)
        
        ])
        
        
        let November = UILabel()
        November.text = "November 4th"
        November.autoresizingMask = .flexibleWidth
        November.font = UIFont.systemFont(ofSize: 17)
        November.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(November)
        
        NSLayoutConstraint.activate([
        
        November.topAnchor.constraint(equalTo: play.bottomAnchor, constant: 8),
        November.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        November.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20)
        
        ])
        
        let imageView = UIImageView()
        imageView.image = UIImage(named:"Dog")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
        
        imageView.topAnchor.constraint(equalTo: November.bottomAnchor, constant: 10),
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9)
        
        ])
        
        let BottomView = UIView()
        BottomView.backgroundColor = UIColor.clear
        BottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BottomView)
        
        NSLayoutConstraint.activate([
        
        BottomView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
        BottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        BottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
        BottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
        BottomView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9)
        
        ])
        
        let run = UIButton()
        run.backgroundColor = .yellow
        run.setTitleColor(UIColor.black, for: .normal)
        run.setTitle("Run", for: .normal)
        run.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(run)
        
        NSLayoutConstraint.activate([
        
        run.widthAnchor.constraint(equalTo: BottomView.widthAnchor, multiplier: 0.3),
        run.topAnchor.constraint(equalTo: BottomView.topAnchor, constant: 5),
        run.leadingAnchor.constraint(equalTo: BottomView.leadingAnchor, constant: 10)
        
        ])
        
        let sleep = UIButton()
        sleep.backgroundColor = .yellow
        sleep.setTitleColor(UIColor.black, for: .normal)
        sleep.setTitle("Sleep", for: .normal)
        sleep.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(sleep)

        NSLayoutConstraint.activate([

        sleep.widthAnchor.constraint(equalTo: BottomView.widthAnchor, multiplier: 0.3),
        sleep.topAnchor.constraint(equalTo: BottomView.topAnchor, constant: 5),
        sleep.leadingAnchor.constraint(equalTo: run.trailingAnchor, constant: 8)
            
        ])

        let walk = UIButton()
        walk.backgroundColor = .yellow
        walk.setTitleColor(UIColor.black, for: .normal)
        walk.setTitle("Walk", for: .normal)
        walk.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(walk)
        
        NSLayoutConstraint.activate([

        walk.widthAnchor.constraint(equalTo: BottomView.widthAnchor, multiplier: 0.3),
        walk.topAnchor.constraint(equalTo: BottomView.topAnchor, constant: 5),
        walk.leadingAnchor.constraint(equalTo: sleep.trailingAnchor, constant: 8)
              
        ])
        
    }
    
}
