//
//  UIImage+Ex.swift
//  Animations
//
//  Created by Asma on 24/11/2021.
//

import Foundation
import UIKit

enum UIImageResource: String {

    case ComputerScience = "ComputerScience"
    
}


extension UIImage {

    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
