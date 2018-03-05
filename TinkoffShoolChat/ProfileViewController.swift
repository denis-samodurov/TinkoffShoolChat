//
//  ProfileViewController.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 06/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var userPlaceholder: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setRadius(view: userPlaceholder);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setRadius(view: UIView){
        view.layer.cornerRadius = 50;
        view.layer.masksToBounds = true;
    }
}
