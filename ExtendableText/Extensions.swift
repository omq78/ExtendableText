//
//  Extensions.swift
//  ExtendableText
//
//  Created by Omar Alqabbani on 7/25/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static let bgColor = rgb(r: 0, g: 166,  b: 147)
}


extension UIViewController: UITextViewDelegate {
    public func textViewDidChange(_ textView: UITextView) {
        let size = CGSize(width: view.frame.width, height: .infinity)
        let estimatedSize = textView.sizeThatFits(size)
        textView.constraints.forEach { (cons) in
            if cons.firstAttribute == .height {
                cons.constant = estimatedSize.height
            }
        }
    }
}
