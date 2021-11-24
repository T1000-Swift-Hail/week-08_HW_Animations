//
//  ViewController.swift
//  HW_Animations
//
//  Created by Njoud Alrshidi on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var labelView2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewAnimations()
        labelViewAnimations()
        labelView2Animations()
    
    }
    
  func imageViewAnimations() {

      imageView.transform = imageView.transform.rotated(by: -200)
      imageView.transform.tx = -view.frame.width
      imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
      UIView.animate(withDuration: 4, delay: 0, options: [.curveEaseIn], animations: {
          self.imageView.transform = self.imageView.transform.rotated(by: 200)
          self.imageView.transform.tx = 0
          self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
          
      }, completion: nil)
      
     }
      


  func labelViewAnimations() {
      let thelabelView = labelView.transform
      labelView.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
      UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
          self.labelView.transform = CGAffineTransform.init(translationX: 0, y: 0)
          self.labelView.transform = thelabelView
        })
  }
  func labelView2Animations() {
      let thelabelView = labelView2.transform
      labelView2.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
      UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
          self.labelView2.transform = CGAffineTransform.init(translationX: 0, y: 0)
          self.labelView2.transform = thelabelView
        })
        
    }
    
}
