//
//  ViewController.swift
//  Animation_HW
//
//  Created by Hind Alharbi on 11/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labeltext: UILabel!
    
    @IBOutlet weak var textView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        Animations2()
        Animations3()
        // Do any additional setup after loading the view.
    }
    fileprivate func Animations() {
        
        self.view.layoutIfNeeded()

        UIView.animate(withDuration: 2, delay: 0)
        {
            self.imageView.transform = CGAffineTransform(scaleX: 8, y: 8)
            self.imageView.transform = CGAffineTransform(rotationAngle: 70)

        }completion: { _ in
            UIView.animate(withDuration: 2, delay: 1, options: .curveEaseOut) {
                self.imageView.transform = CGAffineTransform(rotationAngle: 0)

            } completion: { _ in
                
            }
        }
    }
    fileprivate func Animations2() {
        
        UIView.animate(withDuration: 0, delay: 0, animations: {
                self.labeltext.frame.origin.x = -500
            }) {_ in
                UIView.animate(withDuration: 2 , delay: 2) {
                    self.labeltext.frame.origin.x = 5
                }
            }

    }
    fileprivate func Animations3() {
        
        
        UIView.animate(withDuration: 0, delay: 0, animations: {
                self.textView.frame.origin.x = -500
            }) {_ in
                UIView.animate(withDuration: 2 ,  delay: 2) {
                    self.textView.frame.origin.x = 5
                }
            }
}

}
