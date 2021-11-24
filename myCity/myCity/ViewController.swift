//
//  ViewController.swift
//  myCity
//
//  Created by Dalal AlSaidi on 18/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleAlUla: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
    }
    
    fileprivate func Animations() {
        
//  image
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
       
        UIKit.UIView.animate(withDuration: 2, delay: 1, options: [.curveEaseOut], animations: {
            self.imageView.transform = self.imageView.transform.scaledBy(x:0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
// label ...
        titleAlUla.transform = titleAlUla.transform.scaledBy(x: 2, y: 2)
        titleAlUla.alpha = 0

        UIKit.UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut, .repeat], animations: {
            self.titleAlUla.transform = self.titleAlUla.transform.scaledBy(x:0.5, y: 0.5)
            self.titleAlUla.alpha = 1
        }, completion: nil)

// text View ...
        textView.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
        textView.alpha = 1
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn) {
            self.textView?.transform = CGAffineTransform.init(translationX: 0, y: 0)
    
            } completion: { _ in

            }
        }
}
