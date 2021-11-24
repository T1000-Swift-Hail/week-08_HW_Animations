//
//  ViewController.swift
//  AnimationHW
//
//  Created by MACBOOK on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnimationsImage()
        animationsTitle()
        AnimationsText()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    func AnimationsImage() {
        // do the animation
        
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        labelView.center.x = -view.frame.width
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.alpha = 1
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
        }, completion: nil)
        
        
    }
    
    func AnimationsText() {
        
        textView.transform = textView.transform.scaledBy(x: 0.5, y: 0.5)
        let animationui = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: { [self] in
            self.textView.transform = self.textView.transform.scaledBy(x: 2, y: 2)
        })
        
        animationui.startAnimation()
        
        
    }
    
    func animationsTitle() {
        
        labelView.transform = labelView.transform.scaledBy(x: 0.5, y: 0.5)
        let animationui = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: { [self] in
            self.labelView.transform = self.labelView.transform.scaledBy(x: 2, y: 2)
        })
        
        animationui.startAnimation()
    }
    
}







