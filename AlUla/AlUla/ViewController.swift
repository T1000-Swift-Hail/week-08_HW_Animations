//
//  ViewController.swift
//  AlUla
//
//  Created by AryafAlaqabali on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgAlula: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAlula: UILabel!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            Animations()
            AnimationsName()
            AnimationsDescribe()
    }
    fileprivate func Animations() {
        imgAlula.transform = imgAlula.transform.rotated(by: -200)
        imgAlula.transform.tx = -view.frame.width
        imgAlula.transform = imgAlula.transform.scaledBy(x: 2, y: 2)
        UIView.animate(withDuration: 3, delay: 0, options: [.curveEaseIn], animations: {
            self.imgAlula.transform = self.imgAlula.transform.rotated(by: 200)
            self.imgAlula.transform.tx = 0
            self.imgAlula.transform = self.imgAlula.transform.scaledBy(x: 0.5, y: 0.5)
        }, completion: nil)
    }
    fileprivate func AnimationsName() {
        let lblView = lblName.transform
        lblName.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn], animations: {
            self.lblName.transform = CGAffineTransform.init(translationX: 0, y: 0)
            self.lblName.transform = lblView
        })
            }
            
        
        
        
    
    
    fileprivate func AnimationsDescribe() {
        let lblView = lblAlula.transform
        lblAlula.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
            self.lblAlula.transform = CGAffineTransform.init(translationX: 0, y: 0)
            self.lblAlula.transform = lblView
        })
            }
            
        }
     






