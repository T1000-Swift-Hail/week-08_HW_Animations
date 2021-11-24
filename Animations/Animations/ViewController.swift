//
//  ViewController.swift
//  Animations
//
//  Created by Asma on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(resource: .ComputerScience)
        titleLabel.textColor = .colorTitle
        topicLabel.textColor = .colorTopic
        
        
        
        
        
        animationsImage()
        animationsTitle()
        animationsTopic()
    }
    
    
    func animationsImage() {
        
        imageView.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .allowAnimatedContent) {
            self.imageView.center.x = self.view.frame.width / 2
        } completion: { _ in
            
        }
        
    }
    
    
    func animationsTitle() {
        
        UIView.animate(withDuration: 1) {
            self.titleLabel.frame.origin.x = 300
        } completion: { _ in
        }
    }
    
    
    
    func animationsTopic() {
     
        UIView.animate(withDuration: 1.5) {
            self.topicLabel.frame.origin.x = 300
        } completion: { _ in
        }
        
        
        
    }
    
}

