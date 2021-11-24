//
//  ViewController.swift
//  HW Animations
//
//  Created by HIND12 on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var lableView: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        Animations()
    }
    fileprivate func Animations() {
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.imageView.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.imageView.alpha = 0
            } completion: { _ in
                
            }
            
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.lableView.transform = CGAffineTransform(rotationAngle: 120)
            } completion: { _ in
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.lableView.alpha = 0
                } completion: { _ in
                }
                
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.textView.transform = CGAffineTransform(rotationAngle: 120)
                } completion: { _ in
                    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                        self.textView.alpha = 0
                    } completion: { _ in
                        
                    }
                }
            }
            
        }
    }
}
