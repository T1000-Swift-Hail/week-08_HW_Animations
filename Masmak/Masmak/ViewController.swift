//
//  ViewController.swift
//  Masmak
//
//  Created by Huda N S on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animationsTitle()
        animationsDis()
        animationsImageViwe()
    }
    
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dis: UILabel!
    @IBOutlet weak var imageViwe: UIImageView!
    
    
    
    func animationsImageViwe() {
        imageViwe.transform = CGAffineTransform.init(translationX: 0, y: -view.frame.height)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.imageViwe.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
    }
    
    
    
    
    
    func animationsTitle() {
        
        name.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.name.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
        
    }
    
    
    func animationsDis() {
        dis.transform = CGAffineTransform.init(translationX: 0, y: 400)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.dis.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
      }
    
    

}

