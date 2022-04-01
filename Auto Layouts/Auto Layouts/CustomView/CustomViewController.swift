//
//  CustomViewController.swift
//  Auto Layouts
//
//  Created by Shahzaib Mumtaz on 13/01/2022.
//

import UIKit

class CustomViewController: UIViewController {

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
            
        let TopConstraint = NSLayoutConstraint(item: Row, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 40)
        let horizontalConstraint = NSLayoutConstraint(item: Row, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([horizontalConstraint,TopConstraint])
        
        let AustralianShepherd = UILabel()
        AustralianShepherd.text = "Australian Shepherd"
        AustralianShepherd.autoresizingMask = .flexibleWidth
        AustralianShepherd.font = UIFont.systemFont(ofSize: 20)
        AustralianShepherd.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(AustralianShepherd)
        
        let AustralianShepherdTopConstraint = NSLayoutConstraint(item: AustralianShepherd, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: Row, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 40)
        let AustralianShepherdhorizontalConstraint = NSLayoutConstraint(item: AustralianShepherd, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([AustralianShepherdhorizontalConstraint,AustralianShepherdTopConstraint])
        
        let play = UILabel()
        play.text = "Playing at the Dog Park Island"
        play.autoresizingMask = .flexibleWidth
        play.font = UIFont.systemFont(ofSize: 25)
        play.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(play)
        
        let playTopConstraint = NSLayoutConstraint(item: play, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: AustralianShepherd, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 40)
        let playLeadingConstraint = NSLayoutConstraint(item: play, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        let playTrailingConstraint = NSLayoutConstraint(item: play, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 20)
        
        NSLayoutConstraint.activate([playTopConstraint,playLeadingConstraint,playTrailingConstraint])
        
        let November = UILabel()
        November.text = "November 4th"
        November.autoresizingMask = .flexibleWidth
        November.font = UIFont.systemFont(ofSize: 17)
        November.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(November)
        
        let NovemberTopConstraint = NSLayoutConstraint(item: November, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: play, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 30)
        let NovemberLeadingConstraint = NSLayoutConstraint(item: November, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        let NovemberTrailingConstraint = NSLayoutConstraint(item: November, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 20)
        
        NSLayoutConstraint.activate([NovemberTopConstraint,NovemberLeadingConstraint,NovemberTrailingConstraint])
        
        let imageView = UIImageView()
        imageView.image = UIImage(named:"Dog")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        let imageViewTopConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: November, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 30)
        let imageViewLeadingConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        let imageViewTrailingConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 20)
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.9).isActive = true
        
        NSLayoutConstraint.activate([imageViewTopConstraint,imageViewLeadingConstraint,imageViewTrailingConstraint])
        
        let BottomView = UIView()
        BottomView.backgroundColor = UIColor.clear
        BottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(BottomView)

        let BottomViewTopConstraint = NSLayoutConstraint(item: BottomView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 90)
        let BottomViewLeadingConstraint = NSLayoutConstraint(item: BottomView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        let BottomViewTrailingConstraint = NSLayoutConstraint(item: BottomView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 20)
        BottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        BottomView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        
        NSLayoutConstraint.activate([BottomViewTopConstraint,BottomViewLeadingConstraint,BottomViewTrailingConstraint])
        
        let run = UIButton()
        run.backgroundColor = .yellow
        run.setTitleColor(UIColor.black, for: .normal)
        run.setTitle("Run", for: .normal)
        run.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(run)

        let runTopConstraint = NSLayoutConstraint(item: run, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: BottomView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 8)
        let runLeadingConstraint = NSLayoutConstraint(item: run, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: BottomView, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 8)
        run.widthAnchor.constraint(equalTo: BottomView.widthAnchor,multiplier: 0.3).isActive = true

        NSLayoutConstraint.activate([runTopConstraint,runLeadingConstraint])

        let sleep = UIButton()
        sleep.backgroundColor = .yellow
        sleep.setTitleColor(UIColor.black, for: .normal)
        sleep.setTitle("Sleep", for: .normal)
        sleep.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(sleep)

        let sleepTopConstraint = NSLayoutConstraint(item: sleep, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: BottomView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 8)
        let sleepLeadingConstraint = NSLayoutConstraint(item: sleep, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: run, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 110)
        sleep.widthAnchor.constraint(equalTo: BottomView.widthAnchor,multiplier: 0.3).isActive = true

        NSLayoutConstraint.activate([sleepTopConstraint,sleepLeadingConstraint])

        let walk = UIButton()
        walk.backgroundColor = .yellow
        walk.setTitleColor(UIColor.black, for: .normal)
        walk.setTitle("Walk", for: .normal)
        walk.translatesAutoresizingMaskIntoConstraints = false
        BottomView.addSubview(walk)

        let walkTopConstraint = NSLayoutConstraint(item: walk, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: BottomView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 8)
        let walkLeadingConstraint = NSLayoutConstraint(item: walk, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: sleep, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 110)
        walk.widthAnchor.constraint(equalTo: BottomView.widthAnchor,multiplier: 0.3).isActive = true

        NSLayoutConstraint.activate([walkTopConstraint,walkLeadingConstraint])
    }
    
}
