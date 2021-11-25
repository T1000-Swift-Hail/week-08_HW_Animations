//
//  ViewController.swift
//  Animation
//
//  Created by طلال عبيدالله دعيع القلادي on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        
        // Do any additional setup after loading the view.
    }
    fileprivate func Animations() {
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        
        let originalLabelViewTransformCX = labelView.center.x
        labelView.center.x = -view.frame.width
        
        UIView.animate(withDuration: 4, delay: 0, options: [.curveEaseIn], animations: {
            
            self.imageView.transform =  self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
        
        let uiAnimator = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.labelView.center.x = originalLabelViewTransformCX
        })
        
        uiAnimator.startAnimation()
          
        
    }
    
    }
    
    
    





