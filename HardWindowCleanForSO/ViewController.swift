//
//  ViewController.swift
//  HardWindowCleanForSO
//
//  Created by VAndrJ on 2/3/17.
//  Copyright © 2017 VAndrJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnClick(_ sender: UIButton) {
        let window = (UIApplication.shared.delegate as! AppDelegate).window!
        let prewController = window.rootViewController
        for element in window.subviews {
            element.removeFromSuperview()
        }
        window.rootViewController = storyboard!.instantiateViewController(withIdentifier: "SECONDVC")
        prewController?.dismiss(animated: false, completion: {
            prewController?.view.removeFromSuperview()
        })
    }
    
    deinit {
        print("FirstVC deinit")
    }
}

