//
//  ViewController.swift
//  AnimationsHW_
//
//  Created by mona aleid on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var textMovie: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        Animations2()
        Animations3()
    }

 func Animations() {
     movieImage.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
     UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {self.movieImage.transform = CGAffineTransform.init(translationX: 0, y: 0) }, completion: nil)
}
    
 func Animations2() {
     
     lblTitle.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
     UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {self.lblTitle.transform = CGAffineTransform.init(translationX: 0, y: 0) }, completion: nil)
     UIView.animate(withDuration: 1, delay: 0.5, options: .transitionCrossDissolve)
     {
         self.lblTitle.transform = CGAffineTransform(translationX: -60 , y:0)
    } completion: { _ in
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.lblTitle.alpha = 0
        } completion: { _ in

        }

    }
     
}
 func Animations3() {
     textMovie.transform = CGAffineTransform.init(translationX: -view.frame.width, y: 0)
     UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {self.textMovie.transform = CGAffineTransform.init(translationX: 0, y: 0) }, completion: nil)
     
     UIView.animate(withDuration: 1, delay: 0.5, options: .transitionCrossDissolve)
     {
         self.textMovie.transform = CGAffineTransform(translationX: -60 , y:0)
    } completion: { _ in
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.textMovie.alpha = 0
        } completion: { _ in

        }

    }

}
}
