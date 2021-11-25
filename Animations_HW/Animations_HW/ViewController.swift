//
//  ViewController.swift
//  Animations_HW
//
//  Created by noyer altamimi on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var princMBS: UILabel!
    
    @IBOutlet weak var mbsPic: UIImageView!
    
    @IBOutlet weak var infoText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        
    }

    fileprivate func Animations() {
        
    UIView.animate(withDuration: 1, delay: 1 , options: .beginFromCurrentState) {
        self.mbsPic.transform = CGAffineTransform(rotationAngle: 120)
    } completion: { _ in

        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn) {
            self.mbsPic.alpha = 0
        } completion: { _ in
            
        }
        UIView.animate(withDuration: 1, delay: 1 , options: .beginFromCurrentState) {
            self.princMBS.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in

            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.princMBS.alpha = 0
            } completion: { _ in
                
            }
            UIView.animate(withDuration: 1, delay: 1 , options: .beginFromCurrentState) {
                self.infoText.transform = CGAffineTransform(rotationAngle: 120)
            } completion: { _ in

            }
        }
    }
}
    
}
