//
//  ViewController.swift
//  HW_Animations
//
//  Created by Munira abdullah on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelView: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        imageViewAninmation()
        
        textView.transform = textView.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimatorForSesc = UIViewPropertyAnimator(duration: 3, curve: .easeInOut, animations: {
            self.textView.transform = self.textView.transform.scaledBy(x: 2, y: 2)
        })
        
        uiAnimatorForSesc.startAnimation()
    
    }
    
    func imageViewAninmation() {
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        labelView.center.x = -view.frame.width
        
        UIView.animate(withDuration: 4, delay: 0, options: [.curveEaseIn], animations: {
            
            //self.imageView.transform = CGAffineTransform.init(translationX: 0, y: 0)
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
            self.imageView.alpha = 1
            
        }, completion: nil)
        
        let uiAnimator = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
         
            self.labelView.center.x = 0
        })
        
        uiAnimator.startAnimation()
        
    }

}
