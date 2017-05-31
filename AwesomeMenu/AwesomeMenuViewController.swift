//
//  AwesomeMenuViewController.swift
//  AwesomeMenu
//
//  Created by Evandro Harrison Hoffmann on 5/31/17.
//  Copyright © 2017 It's Day Off. All rights reserved.
//

import UIKit

class AwesomeMenuViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        prepareForAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animateIn()
    }

    // MARK: - Animations
    
    func prepareForAnimation() {
        menuView.isHidden = true
    }
    
    func animateIn() {
        menuView.isHidden = false
        menuView.frame.origin.x = -menuView.frame.size.width
        
        UIView.animate(withDuration: 0.3, animations: {
            self.menuView.frame.origin.x = 0
        }) { (completed) in
            UIView.animate(withDuration: 0.1) {
                self.menuView.frame.origin.x = -20
            }
        }
    }

}
