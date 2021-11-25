//
//  ViewController.swift
//  AnimationsHW
//
//  Created by hana Alshammri on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageSeason: UIImageView!
    @IBOutlet weak var theAutumnSeason: UILabel!
    @IBOutlet weak var theAutumn: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       Animations()
        
    }
        // Do any additional setup after loading the view.

    fileprivate func Animations() {
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.imageSeason.transform = CGAffineTransform(rotationAngle: 120)
            } completion: { _ in
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.imageSeason.alpha = 0
                } completion: { _ in
                    
                }
              
                        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                            self.theAutumnSeason.transform = CGAffineTransform(rotationAngle: 120)
                        } completion: { _ in
                            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                                self.theAutumnSeason.alpha = 0
                            } completion: { _ in
                                
                            }
                            
                        }
                    }
                        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                            self.theAutumn.transform = CGAffineTransform(rotationAngle: 120)
                        } completion: { _ in
                            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                                self.theAutumn.alpha = 0
                            } completion: { _ in
                                
                            }
                            
                        }
                    }
            }
        
    



