//
//  ViewController.swift
//  02_TimerDemo
//
//  Created by JXT on 2019/2/15.
//  Copyright © 2019 JXT. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var resultLabel: UILabel?
//    var timer: Timer!
    var timer: Timer?
    var labelNumber: Double = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        //label
        resultLabel = UILabel()
        self.view.addSubview(resultLabel!)
        resultLabel?.textColor = UIColor.black
        resultLabel?.font = UIFont.systemFont(ofSize: 30)
        resultLabel?.text = "0"
//        if let label = resultLabel {
//            self.view.addSubview(label)
//            label.snp.makeConstraints({ (make) in
//                make.height.equalTo(50)
//                make.centerX.equalTo(self.view.snp.centerX)
//            })
//        }
        resultLabel?.snp.makeConstraints({ (make) in
//            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalTo(self.view.snp.centerX)
            make.top.equalTo(100)
        })
        
        //start
        let startButton = UIButton(type: .system)
        self.view.addSubview(startButton)
        startButton.backgroundColor = UIColor.init(red: 1, green: 101/255.0, blue: 27/255.0, alpha: 1)
        startButton.setTitle("Start", for: .normal)
        startButton.setTitleColor(UIColor.white, for: .normal)
        startButton.addTarget(self, action: #selector(startHandler), for: .touchUpInside)
        startButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(300)
            make.left.bottom.equalTo(self.view).offset(0)
            make.width.equalTo(self.view.bounds.width * 0.5)
        }
        
        //end
        let endButton = UIButton(type: .system)
        self.view.addSubview(endButton)
        endButton.backgroundColor = UIColor.init(red: 98/255.0, green: 242/255.0, blue: 23/255.0, alpha: 1)
        endButton.setTitle("End", for: .normal)
        endButton.setTitleColor(UIColor.white, for: .normal)
        endButton.addTarget(self, action: #selector(stopHandler), for: .touchUpInside)
        endButton.snp.makeConstraints { (make) in
            make.top.equalTo(startButton.snp.top)
            make.right.bottom.equalTo(self.view).offset(0)
            make.width.equalTo(self.view.bounds.width * 0.5)
        }
        
        //reset
        let resetButton = UIButton(type: .system)
        self.view.addSubview(resetButton)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(UIColor.white, for: .normal)
        resetButton.addTarget(self, action: #selector(resetHandler), for: .touchUpInside)
        resetButton.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.right.equalTo(-10)
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
    }
    
    
    @objc func startHandler() {
        
        if self.timer != nil {
            self.stopHandler()
        }
        
        //https://www.jianshu.com/p/53112c534b44
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { [weak self] (Timer) in
//            guard let strongSelf = self else {
//                return
//            }
//            strongSelf.labelNumber += 0.1
//            strongSelf.resultLabel?.text = String(format: "%.1f", strongSelf.labelNumber)
            
//            if let self = self {
//                self.labelNumber += 0.1
//                self.resultLabel?.text = String(format: "%.1f", self.labelNumber)
//            }
            
            if let strongSelf = self {
                strongSelf.labelNumber += 0.1
                strongSelf.resultLabel?.text = String(format: "%.1f", strongSelf.labelNumber)
            }
        })
        self.timer?.fire()
    }
    
    @objc func stopHandler() {
        guard let oldTimer = self.timer else { return }
        oldTimer.invalidate()
    }

    @objc func resetHandler() {
        self.labelNumber = 0
        self.resultLabel?.text = "0"
    }
}

