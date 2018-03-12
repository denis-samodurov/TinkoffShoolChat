//
//  ProfileViewController.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 06/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var userPlaceholder: UIImageView!
    @IBOutlet weak var cameraIcon: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    private var cornerSize: CGFloat = 0.0;
    var imagePicker = UIImagePickerController()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        // ERROR print("EditButton Frame in init: \(editButton.frame)")
        // IBOutlet инициализируются не во время вызова init, поэтому editButton здесь nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("EditButton Frame in viewDidLoad: \(editButton.frame)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //  Frame меняется, потому что autolayout не изменяет размер view моментально, он срабатывает по тригеру и мы не можем управлять когда произойдём пересчёт размеров
        print("EditButton Frame in viewDidAppear: \(editButton.frame)")
        
        cornerSize = cameraIcon.frame.size.height / 2;
        setRadius(view: userPlaceholder);
        setRadius(view: cameraIcon);
    }
    
    private func setRadius(view: UIView){
        view.layer.cornerRadius = cornerSize;
        view.layer.masksToBounds = true;
    }
    
    @IBAction func touchUpCameraIcon(_ sender: UIButton) {
        print("Выбери изображение профиля")
        let alertController = UIAlertController(title: "Редактировать фото", message: "Выбарите действие", preferredStyle: .alert)
        
        let chooseFromGalleryAction = UIAlertAction(title: "Установить из галлереи", style: .default) { action in
            self.getImageFromExternalSource(sourceType: .photoLibrary);
        }
        alertController.addAction(chooseFromGalleryAction)
        
        let takePhtotAction = UIAlertAction(title: "Сделать фото", style: .default) { action in
            self.getImageFromExternalSource(sourceType: .camera);
        }
        alertController.addAction(takePhtotAction)
        
        self.present(alertController, animated: true) { }
    }
    
    func getImageFromExternalSource(sourceType: UIImagePickerControllerSourceType){
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            
            imagePicker.delegate = self
            imagePicker.sourceType = sourceType;
            imagePicker.allowsEditing = false
            
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    // MARK: - UIImagePickerControllerDelegate implementation
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        userPlaceholder.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}
