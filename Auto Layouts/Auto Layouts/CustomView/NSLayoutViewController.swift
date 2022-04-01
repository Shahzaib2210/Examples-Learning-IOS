//
//  NSLayoutViewController.swift
//  Auto Layouts
//
//  Created by Shahzaib Mumtaz on 13/01/2022.
//

import UIKit

class NSLayoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      CreateView()
    
    }
    
    func CreateView() {
        
        let FirstView = UIView()
        FirstView.backgroundColor = UIColor.clear
        FirstView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(FirstView)
        
        let SecondView = UIView()
        SecondView.backgroundColor = UIColor.clear
        SecondView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(SecondView)
        
        let ThirdView = UIView()
        ThirdView.backgroundColor = UIColor.clear
        ThirdView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ThirdView)
        
        let FourthView = UIView()
        FourthView.backgroundColor = UIColor.clear
        FourthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(FourthView)
        
        NSLayoutConstraint.activate([
        
        FirstView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
        FirstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        FirstView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        FirstView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.46),
        
        SecondView.topAnchor.constraint(equalTo: FirstView.bottomAnchor, constant: 0),
        SecondView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        SecondView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        SecondView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.47),
        
        ThirdView.topAnchor.constraint(equalTo: SecondView.bottomAnchor, constant: 0),
        ThirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        ThirdView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        ThirdView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
        
        FourthView.topAnchor.constraint(equalTo: ThirdView.bottomAnchor, constant: 0),
        FourthView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        FourthView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        FourthView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4)
        
        ])
        
        let MainViewImage = UIImageView()
        MainViewImage.image = UIImage(named:"Main")
        MainViewImage.translatesAutoresizingMaskIntoConstraints = false
        FirstView.addSubview(MainViewImage)
        
        MainViewImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        MainViewImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        NSLayoutConstraint.activate([
            
        MainViewImage.widthAnchor.constraint(equalToConstant: 100),
        MainViewImage.heightAnchor.constraint(equalTo: MainViewImage.widthAnchor, multiplier: 1),
        MainViewImage.centerXAnchor.constraint(equalTo: FirstView.centerXAnchor),
        MainViewImage.centerYAnchor.constraint(equalTo: FirstView.centerYAnchor)
        
        ])
        
        let CalculateBill = UIButton()
        CalculateBill.backgroundColor = .yellow
        CalculateBill.setTitleColor(UIColor.black, for: .normal)
        CalculateBill.setTitle("CALCULATE BILL", for: .normal)
        CalculateBill.translatesAutoresizingMaskIntoConstraints = false
        FourthView.addSubview(CalculateBill)
        
        CalculateBill.widthAnchor.constraint(equalToConstant: 120).isActive = true
        CalculateBill.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        NSLayoutConstraint.activate([
            
        CalculateBill.widthAnchor.constraint(equalTo: FourthView.widthAnchor, multiplier: 0.9),
        CalculateBill.heightAnchor.constraint(equalTo: FourthView.widthAnchor, multiplier: 0.1),
        CalculateBill.centerXAnchor.constraint(equalTo: FourthView.centerXAnchor),
        CalculateBill.centerYAnchor.constraint(equalTo: FourthView.centerYAnchor)
        
        ])
        
        let YourBill = UILabel()
        YourBill.text = "Your Bill"
        YourBill.autoresizingMask = .flexibleWidth
        YourBill.font = UIFont.systemFont(ofSize: 20)
        YourBill.translatesAutoresizingMaskIntoConstraints = false
        ThirdView.addSubview(YourBill)
        
        NSLayoutConstraint.activate([
         
        YourBill.topAnchor.constraint(equalTo: ThirdView.topAnchor, constant: 20),
        YourBill.leadingAnchor.constraint(equalTo: ThirdView.leadingAnchor, constant: 20),
        YourBill.widthAnchor.constraint(equalTo: ThirdView.widthAnchor, multiplier: 0.5)
        
        ])
        
        let BillView = UIView()
        BillView.backgroundColor = UIColor.clear
        BillView.translatesAutoresizingMaskIntoConstraints = false
        ThirdView.addSubview(BillView)

        NSLayoutConstraint.activate([

        BillView.topAnchor.constraint(equalTo: YourBill.bottomAnchor, constant: 10),
        BillView.leadingAnchor.constraint(equalTo: ThirdView.leadingAnchor, constant: 20),
        BillView.trailingAnchor.constraint(equalTo: ThirdView.trailingAnchor, constant: 20),
        BillView.heightAnchor.constraint(equalTo: ThirdView.heightAnchor, multiplier: 0.35),
        BillView.widthAnchor.constraint(equalTo: ThirdView.widthAnchor,multiplier: 0.9)

        ])
        
        let BillViewImage = UIImageView()
        BillViewImage.contentMode = .scaleToFill
        BillViewImage.image = UIImage(named:"Rect")
        BillViewImage.translatesAutoresizingMaskIntoConstraints = false
        BillView.addSubview(BillViewImage)

        NSLayoutConstraint.activate([

        BillViewImage.topAnchor.constraint(equalTo: BillView.topAnchor, constant: 0),
        BillViewImage.leadingAnchor.constraint(equalTo: BillView.leadingAnchor, constant: 0),
        BillViewImage.trailingAnchor.constraint(equalTo: BillView.trailingAnchor,constant: 0),
        BillViewImage.bottomAnchor.constraint(equalTo: BillView.bottomAnchor,constant: 0)

        ])
        
        let totalbill = UILabel()
        totalbill.text = "$38.00"
        totalbill.textAlignment = .right
        totalbill.font = UIFont.systemFont(ofSize: 20)
        totalbill.translatesAutoresizingMaskIntoConstraints = false
        BillView.addSubview(totalbill)
        
        NSLayoutConstraint.activate([
         
        totalbill.leadingAnchor.constraint(equalTo: BillView.leadingAnchor, constant: 20),
        totalbill.widthAnchor.constraint(equalTo: BillView.widthAnchor, multiplier: 0.9),
        totalbill.centerYAnchor.constraint(equalTo: BillView.centerYAnchor)
        
        ])
        
        let SecondView1 = UIView()
        SecondView1.backgroundColor = UIColor.clear
        SecondView1.translatesAutoresizingMaskIntoConstraints = false
        SecondView.addSubview(SecondView1)
        
        SecondView1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        SecondView1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        NSLayoutConstraint.activate([
            
        SecondView1.widthAnchor.constraint(equalToConstant: 100),
        SecondView1.heightAnchor.constraint(equalTo: SecondView1.widthAnchor, multiplier: 1),
        SecondView1.topAnchor.constraint(equalTo: SecondView.topAnchor, constant: 20),
        SecondView1.leadingAnchor.constraint(equalTo: SecondView.leadingAnchor, constant: 25)
        
        ])
        
        let SecondView2 = UIView()
        SecondView2.backgroundColor = UIColor.clear
        SecondView2.translatesAutoresizingMaskIntoConstraints = false
        SecondView.addSubview(SecondView2)
        
        SecondView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        SecondView2.heightAnchor.constraint(equalToConstant: 100).isActive = true

        NSLayoutConstraint.activate([
        
        SecondView2.widthAnchor.constraint(equalToConstant: 100),
        SecondView2.heightAnchor.constraint(equalTo: SecondView2.widthAnchor, multiplier: 1),
        SecondView2.topAnchor.constraint(equalTo: SecondView.topAnchor, constant: 20),
        SecondView2.leadingAnchor.constraint(equalTo: SecondView1.trailingAnchor, constant: 8)
        
        ])
        
        let SecondView3 = UIView()
        SecondView3.backgroundColor = UIColor.clear
        SecondView3.translatesAutoresizingMaskIntoConstraints = false
        SecondView.addSubview(SecondView3)
        
        SecondView3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        SecondView3.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        NSLayoutConstraint.activate([

        SecondView3.widthAnchor.constraint(equalToConstant: 100),
        SecondView3.heightAnchor.constraint(equalTo: SecondView3.widthAnchor, multiplier: 1),
        SecondView3.topAnchor.constraint(equalTo: SecondView.topAnchor, constant: 20),
        SecondView3.leadingAnchor.constraint(equalTo: SecondView2.trailingAnchor, constant: 8)

        ])
        
        let SecondImageView1 = UIImageView()
        SecondImageView1.contentMode = .scaleToFill
        SecondImageView1.image = UIImage(named:"Rect")
        SecondImageView1.translatesAutoresizingMaskIntoConstraints = false
        SecondView1.addSubview(SecondImageView1)

        let SecondImageView2 = UIImageView()
        SecondImageView2.contentMode = .scaleToFill
        SecondImageView2.image = UIImage(named:"Rect")
        SecondImageView2.translatesAutoresizingMaskIntoConstraints = false
        SecondView2.addSubview(SecondImageView2)

        let SecondImageView3 = UIImageView()
        SecondImageView3.contentMode = .scaleToFill
        SecondImageView3.image = UIImage(named:"Rect")
        SecondImageView3.translatesAutoresizingMaskIntoConstraints = false
        SecondView3.addSubview(SecondImageView3)

        NSLayoutConstraint.activate([

        SecondImageView1.topAnchor.constraint(equalTo: SecondView1.topAnchor),
        SecondImageView1.leadingAnchor.constraint(equalTo: SecondView1.leadingAnchor),
        SecondImageView1.trailingAnchor.constraint(equalTo: SecondView1.trailingAnchor),
        SecondImageView1.bottomAnchor.constraint(equalTo: SecondView1.bottomAnchor),

        SecondImageView2.topAnchor.constraint(equalTo: SecondView2.topAnchor),
        SecondImageView2.leadingAnchor.constraint(equalTo: SecondView2.leadingAnchor),
        SecondImageView2.trailingAnchor.constraint(equalTo: SecondView2.trailingAnchor),
        SecondImageView2.bottomAnchor.constraint(equalTo: SecondView2.bottomAnchor),

        SecondImageView3.topAnchor.constraint(equalTo: SecondView3.topAnchor),
        SecondImageView3.leadingAnchor.constraint(equalTo: SecondView3.leadingAnchor),
        SecondImageView3.trailingAnchor.constraint(equalTo: SecondView3.trailingAnchor),
        SecondImageView3.bottomAnchor.constraint(equalTo: SecondView3.bottomAnchor)

        ])
        
        let image1Label = UILabel()
        image1Label.text = "$10.00"
        image1Label.autoresizingMask = .flexibleWidth
        image1Label.font = UIFont.systemFont(ofSize: 17)
        image1Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image1Label)
        
        let image2Label = UILabel()
        image2Label.text = "$15.00"
        image2Label.autoresizingMask = .flexibleWidth
        image2Label.font = UIFont.systemFont(ofSize: 17)
        image2Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image2Label)
        
        let image3Label = UILabel()
        image3Label.text = "$20.00"
        image3Label.autoresizingMask = .flexibleWidth
        image3Label.font = UIFont.systemFont(ofSize: 17)
        image3Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image3Label)
        
        NSLayoutConstraint.activate([

        image1Label.centerXAnchor.constraint(equalTo: SecondView1.centerXAnchor),
        image1Label.centerYAnchor.constraint(equalTo: SecondView1.centerYAnchor),

        image2Label.centerXAnchor.constraint(equalTo: SecondView2.centerXAnchor),
        image2Label.centerYAnchor.constraint(equalTo: SecondView2.centerYAnchor),

        image3Label.centerXAnchor.constraint(equalTo: SecondView3.centerXAnchor),
        image3Label.centerYAnchor.constraint(equalTo: SecondView3.centerYAnchor),

        ])
        
        let Bottomimage1Label = UILabel()
        Bottomimage1Label.text = "10%"
        Bottomimage1Label.autoresizingMask = .flexibleWidth
        Bottomimage1Label.font = UIFont.systemFont(ofSize: 17)
        Bottomimage1Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(Bottomimage1Label)
        
        let Bottomimage2Label = UILabel()
        Bottomimage2Label.text = "15%"
        Bottomimage2Label.autoresizingMask = .flexibleWidth
        Bottomimage2Label.font = UIFont.systemFont(ofSize: 17)
        Bottomimage2Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(Bottomimage2Label)
        
        let Bottomimage3Label = UILabel()
        Bottomimage3Label.text = "20%"
        Bottomimage3Label.autoresizingMask = .flexibleWidth
        Bottomimage3Label.font = UIFont.systemFont(ofSize: 17)
        Bottomimage3Label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(Bottomimage3Label)
        
        NSLayoutConstraint.activate([

        Bottomimage1Label.topAnchor.constraint(equalTo: SecondView1.bottomAnchor, constant: 10),
        Bottomimage1Label.centerXAnchor.constraint(equalTo: SecondView1.centerXAnchor),

        Bottomimage2Label.topAnchor.constraint(equalTo: SecondView2.bottomAnchor, constant: 10),
        Bottomimage2Label.centerXAnchor.constraint(equalTo: SecondView2.centerXAnchor),

        Bottomimage3Label.topAnchor.constraint(equalTo: SecondView3.bottomAnchor, constant: 10),
        Bottomimage3Label.centerXAnchor.constraint(equalTo: SecondView3.centerXAnchor)

        ])
    }
    
}
