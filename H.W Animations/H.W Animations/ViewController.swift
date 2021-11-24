//
//  ViewController.swift
//  H.W Animations
//
//  Created by Seham الشطنان on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ImagevVew: UIImageView!
    
    
    @IBOutlet weak var labelView: UILabel!
    
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        Animations()
    }

    fileprivate func Animations() {
     UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
    self.ImagevVew.transform = CGAffineTransform(rotationAngle: 120)
} completion: { _ in
    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
        self.ImagevVew.alpha = 0
    } completion: { _ in
        
    }

    
    UIView.animate(withDuration: 1, delay: 0.6, options: .curveEaseOut) {
        self.labelView.transform = CGAffineTransform(rotationAngle: 110)
    } completion: { _ in
        UIView.animate(withDuration: 1, delay: 0.7, options: .curveEaseOut) {
            self.labelView.alpha = 0
        } completion: { _ in
            
        }
           
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.textView.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in
            UIView.animate(withDuration: 1, delay: 0.8, options: .curveEaseOut) {
                self.textView.alpha = 0
            } completion: { _ in
                
            }
        }
    }
}
    }
}
