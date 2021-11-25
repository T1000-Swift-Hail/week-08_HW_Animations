//
//  ViewController.swift
//  week_08_HW_Animations
//
//  Created by Ahmed Alenazi on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImegeView: UIImageView!
    @IBOutlet weak var TiteLabal: UILabel!
    @IBOutlet weak var TextView: UITextView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        
        ImegeView.transform.ty = -view.frame.width
        ImegeView.alpha = 0
        
        
        let uiAnimationImege = UIViewPropertyAnimator(duration: 2, curve: .linear, animations: {
            
            
            
            self.ImegeView.alpha = 1
            self.ImegeView.transform.ty = 0
            self.ImegeView.transform = self.ImegeView.transform.inverted()
            
        })
        
        
        TiteLabal.center.x = -view.frame.width
        TiteLabal.alpha = 0
        let uiAanimationLabal = UIViewPropertyAnimator(duration: 2, curve: .linear, animations: {
            self.TiteLabal.center.x = 0
            self.TiteLabal.alpha = 1
        })
        
        
        TextView.center.y = +view.frame.width
        TextView.alpha = 0
        
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .linear, animations: {
            self.TextView.center.y = 0
            self.TextView.alpha = 1
        })
        
        
        
        uiAnimationText.startAnimation()
        uiAanimationLabal.startAnimation()
        uiAnimationImege.startAnimation()
        
    }
 
}

