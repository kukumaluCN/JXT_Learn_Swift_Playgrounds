//
//  ViewController.swift
//  01_CustomFont
//
//  Created by JXT on 2019/2/14.
//  Copyright © 2019 JXT. All rights reserved.
//

import UIKit
import SnapKit



class ViewController: UIViewController {
    
    let label = UILabel()
    var fontNamesArray = [String]()
    var index = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        label.text = "Custom Font Demo"
        label.textAlignment = NSTextAlignment.center
//        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25)
        self.view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.centerX.equalTo(self.view)
        }
        
        //button
        let changeBtn = UIButton(type: .custom)
        changeBtn.setTitle("Change Font Family", for: .normal)
        changeBtn.setTitleColor(UIColor.blue, for: .normal)
//        changeBtn.titleLabel?.numberOfLines = 0
//        changeBtn.titleLabel?.textAlignment = .center
        changeBtn.layer.borderColor = UIColor.blue.cgColor
        changeBtn.layer.borderWidth = 1
        changeBtn.layer.cornerRadius = 5
        changeBtn.showsTouchWhenHighlighted = true
//        changeBtn.addTarget(self, action: Selector("changeFontFamily"), for: .touchUpInside)
        changeBtn.addTarget(self, action: #selector(changeFontFamily), for: .touchUpInside)
        self.view.addSubview(changeBtn)
        changeBtn.snp.makeConstraints { (make) in
//            make.top.equalTo(label.snp_bottomMargin).offset(100)
            make.top.equalTo(500)
            make.centerX.equalTo(self.view)
            make.width.equalTo(200)
        }
        
        
        let familyNames = UIFont.familyNames
        for familyName in familyNames {
            print("++++++ \(familyName)")
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            for fontName in fontNames {
                fontNamesArray.append(fontName)
                print("------ \(fontName)")
            }
        }
        label.text = "Custom Font Demo\n\(fontNamesArray.count) - \(label.font.fontName)"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //https://blog.csdn.net/weixin_35755389/article/details/52593706
    @objc func changeFontFamily() {
//        label.font = UIFont(name: "Savoye LET", size: label.font.pointSize)
        if index < fontNamesArray.count {
            label.text = "Custom Font Demo\n\(fontNamesArray.count) - \(index)\n\(label.font.fontName)"
            label.font = UIFont(name: fontNamesArray[index], size: label.font.pointSize)
            index += 1
        }
        else {
            index = 0
        }
    }
}

