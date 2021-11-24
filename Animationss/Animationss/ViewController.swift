//
//  ViewController.swift
//  Animationss
//
//  Created by iAbdullah17 on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var umlujBeach: UIImageView!
    
    
    
    @IBOutlet weak var cityName: UILabel!
    
    
    
    @IBOutlet weak var cityInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveableAction()
        
    }
    
    
    func moveableAction() {
//
//        self.umlujBeach.transform =
//        CGAffineTransform(scaleX: 5, y: 5)
        
        self.cityName.transform =
        CGAffineTransform(translationX: 500, y: -500)
        
        self.cityInfo.transform =
        CGAffineTransform(translationX: -500, y: -500)
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut ) {
            self.cityName.transform =
            CGAffineTransform(translationX: 0, y: 30)
                        
        }
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.cityInfo.transform =
            CGAffineTransform(translationX: 0, y: 0)
        }
//        umlujBeach.transform =
//        CGAffineTransform(scaleX: -15, y: 15)
        umlujBeach.transform =
        CGAffineTransform(rotationAngle: 2)
        self.umlujBeach.alpha = 0

        let animate = UIViewPropertyAnimator(duration: 2, curve: .easeIn)
        animate.addAnimations {
            self.umlujBeach.transform = .identity
            self.umlujBeach.alpha = 1

        }
        
        animate.startAnimation()
}
}
