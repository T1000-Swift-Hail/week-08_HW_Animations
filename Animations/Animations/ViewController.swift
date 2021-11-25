//
//  ViewController.swift
//  Animations
//
//  Created by Mohammed Abdullah on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImegViewAnimation()
        // Do any additional setup after loading the view.
        
        
        titleLable.center.x = -view.frame.width
        let uiAanimationLabal = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.titleLable.center.x = 0
        })
        uiAanimationLabal.startAnimation()
        
        
        textView.transform = textView.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.textView.transform = self.textView.transform.scaledBy(x: 2, y: 2)
        })
        uiAnimationText.startAnimation()
        
    }
    
    func ImegViewAnimation(){
        
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.imageView.alpha = 1
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
            
            
            
        })
        
    }
}
