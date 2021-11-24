//
//  ViewController.swift
//  Children's Day
//
//  Created by Asma Rasheed on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var childTitle: UILabel!
    
    @IBOutlet weak var textLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   Animations()
   Sliding()
   TextDisplay()
    }
      
     func Animations() {
                 
         imageView.transform = CGAffineTransform.init(translationX: 0, y: -view.frame.height)
             UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
                 
                 self.imageView.transform = CGAffineTransform.init(translationX: 0, y: 0)
             }, completion: nil)
         }
             fileprivate func TextDisplay() {
                 
                 childTitle.transform = CGAffineTransform(translationX: -350, y: 0)
                 childTitle.alpha = 0
                 childTitle.transform = CGAffineTransform(translationX: -350, y: 0)
                 childTitle.alpha = 0
                     UIView.animate(withDuration: 1.5, delay: 0.5, options: .curveEaseInOut) { [self] in
                         childTitle.transform = CGAffineTransform(translationX: 0, y: 0)
                         childTitle.alpha = 1
                         childTitle.alpha = 1
                         childTitle.transform = CGAffineTransform(translationX: 0, y: 0)
                         
                     } completion: { [self] _ in
                         childTitle.transform = CGAffineTransform(translationX: 0, y: 0)
                         childTitle.transform = CGAffineTransform(translationX: 0, y: 0)
                         
                     }
                     
                 }
             fileprivate func Sliding() {
                 
                 UIView.animate(withDuration: 1.5) {
                       self.textLable.frame.origin.x = 300
                   } completion: { _ in
                   }
                   
                   
                   
               }
               
           }
    

