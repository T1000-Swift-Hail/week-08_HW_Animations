//
//  ViewController.swift
//  Animation
//
//  Created by Anas Hamad on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var labelDiscrition: UILabel!
    @IBOutlet var labelContery: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        labelImage()
        imageAnimat()
        
    }
    
    func labelImage(){
        labelContery.transform = CGAffineTransform(translationX: -300, y: 0)
        labelContery.alpha = 0
        labelDiscrition.transform = CGAffineTransform(translationX: -300, y: 0)
        labelDiscrition.alpha = 0
        UIView.animate(withDuration: 1.5, delay: 0.5, options: .curveEaseInOut) { [self] in
            labelContery.transform = CGAffineTransform(translationX: 0, y: 0)
            labelContery.alpha = 1
            labelDiscrition.alpha = 1
            labelDiscrition.transform = CGAffineTransform(translationX: 0, y: 0)
            
        } completion: { [self] _ in
            labelContery.transform = CGAffineTransform(translationX: 0, y: 0)
            labelDiscrition.transform = CGAffineTransform(translationX: 0, y: 0)
            
        }
        
    }
    
    
    func imageAnimat(){
        
        imageView.transform = CGAffineTransform(rotationAngle: 120)
        //        imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        imageView.alpha = 0
        
        UIViewPropertyAnimator.runningPropertyAnimator(
            withDuration: 1.5, delay: 0.5, options: .curveEaseOut,
            animations: {
                self.imageView.alpha = 1
                self.imageView.transform = CGAffineTransform(rotationAngle: 0)
                
            },
            completion: nil
        )
    }
    
    
    
}




