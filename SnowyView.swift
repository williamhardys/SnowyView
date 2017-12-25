
//
//  SnowyView.swift
//  SnowyView
//
//  Created by Rawand Ahmed Shaswar on 12/25/17.
//  Copyright © 2017 DC Middle East. All rights reserved.
//

import UIKit
import SpriteKit

var timer = Timer()
var started : Bool = false



extension UIView {
    @objc func addSnow(Interval: TimeInterval) {
        if started == true {
           // Hi...!
            print("elon musk")
        } else {
            scheduledTimerWithTimeInterval(Intv: Interval)
        }

        self.addSubview(AddEffect(x: CGFloat(arc4random() % UInt32(self.bounds.width)), y:  self.frame.minY - 5))

    }
    
    private func moveSnow (WithView View:UIView) {
        UIView.animate(withDuration: 16, animations: {
            let RandomX = CGFloat(arc4random() % UInt32(self.bounds.width))
            View.frame.origin = CGPoint(x: RandomX, y:self.frame.maxY + 20)
        })
     
    }
    
    
    private func AddEffect (x:CGFloat,y:CGFloat) -> UIView {
        let RandomS = arc4random() % 10

        let snow = UIView(frame: CGRect(x: x, y: y, width:  CGFloat(RandomS), height: CGFloat(RandomS)))
        snow.layer.cornerRadius = snow.frame.size.width / 2
        snow.clipsToBounds = true
        snow.backgroundColor = .white
        moveSnow(WithView: snow)

        
        return snow
    }
    
    func scheduledTimerWithTimeInterval(Intv : TimeInterval){
        
        if Intv == 0 {
           fatalError("Invalid Interval,... 0.5 is the default TimeInterval")
        }
        started = true
        timer = Timer.scheduledTimer(timeInterval: Intv, target: self, selector: #selector(self.addSnow), userInfo: nil, repeats: true)
    }
    

}
