//
//  ViewController.swift
//  week-08_HW_Animations
//
//  Created by mac on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelNeom: UILabel!
    @IBOutlet weak var labelTextNeom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Animations()
    }
    fileprivate func Animations() {
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        labelNeom.transform.tx = -view.frame.width
        labelTextNeom.transform.tx = -view.frame.width
        
        labelNeom.center.x = -view.frame.width
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseInOut], animations: {
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform =  self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
            self.imageView.alpha = 1
            self.labelNeom.transform.tx = 0
            self.labelTextNeom.transform.tx = 0
       
        })
        
    }

}
