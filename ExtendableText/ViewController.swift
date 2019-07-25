//
//  ViewController.swift
//  ExtendableText
//
//  Created by Omar Alqabbani on 7/24/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.bgColor
        let extendableTextView = UITextView()
        extendableTextView.translatesAutoresizingMaskIntoConstraints = false
        extendableTextView.backgroundColor = UIColor.lightGray
        extendableTextView.textColor = UIColor.white
        extendableTextView.font = UIFont.preferredFont(forTextStyle: .headline)
        extendableTextView.isScrollEnabled = false
        extendableTextView.delegate = self
        view.addSubview(extendableTextView)
        [
            extendableTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            extendableTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            extendableTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            extendableTextView.heightAnchor.constraint(equalToConstant: 50)
            ].forEach { (cons) in
                cons.isActive = true
        }
        extendableTextView.text = "type any thing inside this text view and check out that the view is extendable as your writing sie height ... good luck"
        textViewDidChange(extendableTextView)
    }
}
