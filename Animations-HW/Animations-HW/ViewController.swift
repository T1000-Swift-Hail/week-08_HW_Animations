//
//  ViewController.swift
//  Animations-HW
//
//  Created by موضي الحربي on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lableView: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
        imageViewAnimation()
        
        textView.transform = textView.transform.scaledBy(x: 0.5, y: 0.5)
        
        let uiAnimater = UIViewPropertyAnimator(duration: 3, curve: .easeInOut, animations: {
            self.textView.transform = self.textView.transform.scaledBy(x: 2, y: 2)
        })
        
        uiAnimater.startAnimation()
        
    }
    
    
    func imageViewAnimation(){
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform =
        imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        lableView.center.x = -view.frame.width
        
        UIView.animate(withDuration: 4, delay: 0, options: [.curveEaseIn], animations: {
            
            self.imageView.transform =
            self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform =
            self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
            self.imageView.alpha = 1
            
        } ,completion: nil)
        
        let uiAnimator1 = UIViewPropertyAnimator (duration: 2, curve: .easeIn, animations: {
            self.lableView.center.x = 0
        })
        uiAnimator1.startAnimation()
    }
    
    
}











