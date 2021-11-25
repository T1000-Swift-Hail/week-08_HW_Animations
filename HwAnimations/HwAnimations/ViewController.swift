//
//  ViewController.swift
//  HwAnimations
//
//  Created by Mastorah on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titel: UILabel!
    @IBOutlet weak var textLable: UILabel!
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewAnimation()
        titelAnimation()
        textLableAnimation()
    }
   

    func imageViewAnimation() {

        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy( x: 2, y: 2)
    
         UIView.animate(withDuration: 4, delay: 0, options: [.curveEaseIn], animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy( x:0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
    }
       
func titelAnimation () {
    let thetitel = titel.transform
    titel.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
    UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
        self.titel.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        self.titel.transform = thetitel
    })
    }
func textLableAnimation () {
    let thetextLable = textLable.transform
    textLable.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
    UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
        self.textLable.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        self.textLable.transform = thetextLable
    })
    }


    }
    

