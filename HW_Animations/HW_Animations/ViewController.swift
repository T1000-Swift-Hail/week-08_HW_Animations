//
//  ViewController.swift
//  HW_Animations
//
//  Created by Mac on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewAnimation()
        titleNameAnimation()
        textViewAnimation()
        
   func imageViewAnimation() {
    
       imageView.transform = imageView.transform.rotated(by: -200)
       imageView.transform.tx = -view.frame.width
       imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
       imageView.alpha = 0

        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.alpha = 1
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
        }, completion: nil)
        
       
   }
    }

    @IBOutlet weak var titleName: UILabel!
    fileprivate func titleNameAnimation() {
        titleName.center.x = -view.frame.width
        let uiAanimation = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.titleName.center.x = 0
        })
        uiAanimation.startAnimation()
      
    }
    @IBOutlet weak var describtion: UILabel!
    fileprivate func textViewAnimation() {
        describtion.transform = describtion.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.describtion.transform = self.describtion.transform.scaledBy(x: 2, y: 2)
        })
        uiAnimationText.startAnimation()
        }
    }

