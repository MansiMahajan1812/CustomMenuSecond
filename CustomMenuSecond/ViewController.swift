//
//  ViewController.swift
//  CustomMenuSecond
//
//  Created by Mansi Mahajan on 7/3/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var menu_vc: MenuViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        menu_vc = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.responseToGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.responseToGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func responseToGesture(gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case UISwipeGestureRecognizerDirection.right:
            print("Right")
            showMenu()
        case UISwipeGestureRecognizerDirection.left:
            print("Left")
            closeOnSwipe()
        default:
            break
        }
        
    }
    
    func closeOnSwipe() {
        if AppDelegate.menu_bool{
            
        }else{
            closeMenu()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMenuBar(_ sender: UIBarButtonItem) {
        if AppDelegate.menu_bool {
            showMenu()
        }else{
            closeMenu()
        }
    }
    
    
    func showMenu() {
        UIView.animate(withDuration: 0.3) { ()->Void in
            self.menu_vc.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menu_vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
            self.addChildViewController(self.menu_vc)
            self.view.addSubview(self.menu_vc.view)
            AppDelegate.menu_bool = false
        }
    }
    
    func closeMenu() {
        
        UIView.animate(withDuration: 0.3, animations: { ()->Void in
            self.menu_vc.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menu_vc.view.removeFromSuperview()
        }
        AppDelegate.menu_bool = true
    }
}

