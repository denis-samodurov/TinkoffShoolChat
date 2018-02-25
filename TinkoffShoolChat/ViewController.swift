//
//  ViewController.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 25/02/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Application is running function: \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Application is running function: \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        print("Application is running function: \(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        print("Application is running function: \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Application is running function: \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Application is running function: \(#function)")
    }
}

