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
    @IBOutlet weak var cameraIcon: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    private var cornerSize: CGFloat = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cornerSize = cameraIcon.frame.size.height / 2;
        print(cornerSize)
        setRadius(view: userPlaceholder);
        setRadius(view: cameraIcon);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setRadius(view: UIView){
        view.layer.cornerRadius = cornerSize;
        view.layer.masksToBounds = true;
    }
    
    @IBAction func touchUpCameraIcon(_ sender: UIButton) {
        print("Выбери изображение профиля")
    }
}
