//
//  ViewController.swift
//  AnimationsH.W
//
//  Created by Hesah Alqhtani on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    
    
    @IBOutlet weak var labelText: UILabel!
    
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        Animationslabel()
        AnimationsText()
        
        // Do any additional setup after loading the view.
        textView.transform = textView.transform.scaledBy(x: 1, y: 1)
        let uiAnationForTx = UIViewPropertyAnimator(duration: 3, curve: .easeIn, animations:{
            self.textView.transform = self.textView.transform.translatedBy(x: -10, y: -20)
        })
        uiAnationForTx.startAnimation()
        }
   func Animations() {
       
       imageview.transform = imageview.transform.rotated(by: -200)
       imageview.transform.tx = -view.frame.width
       imageview.transform = imageview.transform.scaledBy(x: 2, y: 2)
              UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
        self.imageview.transform = self.imageview.transform.rotated(by: 200)
        self.imageview.transform.tx = 0
        self.imageview.transform = self.imageview.transform.scaledBy(x: 0.5, y: 0.5)

              }, completion: nil)
        
        }

    func Animationslabel() {
        let animatinlabelView = labelText.transform
        labelText.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
              UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
                  self.labelText.transform = CGAffineTransform.init(translationX: 0, y: 0)
                  self.labelText.transform = animatinlabelView
                })
        
    }

    func AnimationsText(){
       
        let animatinTextView = textView.transform
        textView.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
              UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
                  self.textView.transform = CGAffineTransform.init(translationX: 0, y: 0)
                  self.textView.transform = animatinTextView
                })
    }
    

}
