//
//  ViewController.swift
//  MyCityIs
//
//  Created by Monafh on 18/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titelSantorini: UILabel!
    
    @IBOutlet weak var santoriniLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Animations()
    }
    
    fileprivate func Animations() {
        
        //var transformForImage = imageView.transform
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
       
        UIKit.UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
            self.imageView.transform = self.imageView.transform.scaledBy(x:0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
        
        titelSantorini.transform = titelSantorini.transform.scaledBy(x: 2, y: 2)
        titelSantorini.alpha = 0

        UIKit.UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            self.titelSantorini.transform = self.titelSantorini.transform.scaledBy(x:0.5, y: 0.5)
            self.titelSantorini.alpha = 1
        }, completion: nil)


        santoriniLbl.transform = titelSantorini.transform.scaledBy(x: 2, y: 2)
        santoriniLbl.alpha = 1
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.santoriniLbl?.transform = CGAffineTransform(scaleX: 1, y: 1)
    
            } completion: { _ in

            }
        }
    }

    
