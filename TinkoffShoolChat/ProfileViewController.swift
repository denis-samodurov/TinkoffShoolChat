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
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        // ERROR print("EditButton Frame in init: \(editButton.frame)")
        // IBOutlet инициализируются не во время вызова init, поэтому editButton здесь nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerSize = cameraIcon.frame.size.height / 2;
        setRadius(view: userPlaceholder);
        setRadius(view: cameraIcon);
        
        print("EditButton Frame in viewDidLoad: \(editButton.frame)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //  Frame меняется, потому что autolayout не изменяет размер view моментально, он срабатывает по тригеру и мы не можем управлять когда произойдём пересчёт размеров
        print("EditButton Frame in viewDidAppear: \(editButton.frame)")
    }
    
    private func setRadius(view: UIView){
        view.layer.cornerRadius = cornerSize;
        view.layer.masksToBounds = true;
    }
    
    @IBAction func touchUpCameraIcon(_ sender: UIButton) {
        print("Выбери изображение профиля")
    }
}
