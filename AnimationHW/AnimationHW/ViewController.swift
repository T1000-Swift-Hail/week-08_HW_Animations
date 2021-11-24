//
//  ViewController.swift
//  AnimationHW
//
//  Created by Majed Alshammari on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var animator: UIViewPropertyAnimator!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnimate()
        setImageAnimate()
        
    }


    
    func labelAnimate() {
        self.titleLabel.transform = CGAffineTransform(translationX: -300, y: 0)
        self.titleLabel.alpha = 0.5
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn) {
            self.titleLabel.transform = CGAffineTransform(translationX: 0, y: 0)
        } completion: { _ in
            self.titleLabel.alpha = 1.0
        }
        
        self.descriptionLabel.transform = CGAffineTransform(translationX: -420, y: 0)
        self.descriptionLabel.alpha = 0.5
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn) {
            self.descriptionLabel.transform = CGAffineTransform(translationX: 0, y: 0)
        } completion: { _ in
            self.descriptionLabel.alpha = 1.0
        }
        

    }
    
    
    fileprivate func setImageAnimate() {
        imageView.transform = CGAffineTransform(scaleX: 6, y: 6)
        imageView.transform = CGAffineTransform(rotationAngle: 70)
        imageView.alpha = 0
        
        let scale = UIViewPropertyAnimator(duration: 1.5, curve: .easeIn)
        scale.addAnimations {
            self.imageView.alpha = 1.0
        }
        
        scale.addAnimations ({
            self.imageView.transform = .identity
        }, delayFactor: 3)
        scale.startAnimation()

    }
    
    
    

}


