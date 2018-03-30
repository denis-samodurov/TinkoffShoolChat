//
//  FileHandler.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 30/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

class FileHandler{
    static let temporaryDirectory = FileManager.default.temporaryDirectory
    static let fileName = "UserProfile.txt"
    static let filePath = temporaryDirectory.appendingPathComponent(fileName)
    
    static func saveFile(userProfile: UserProfile) -> SaveStatus{
        var dataToSave: [String: String] = [:]
        
        if let nick = userProfile.nick{
            dataToSave["nick"] = nick
        }
        if let aboutUser = userProfile.aboutUser{
            dataToSave["aboutUser"] = aboutUser
        }
        if let avatarImage = userProfile.avatarImage {
            dataToSave["avatarImage"] = UIImagePNGRepresentation(avatarImage)?.base64EncodedString()
        }
        
        do {
            let jsonDataToSave = try JSONSerialization.data(withJSONObject: dataToSave, options: .init(rawValue: 0))
            try jsonDataToSave.write(to: filePath, options: [])
            return SaveStatus.Success
        } catch {
            print(error.localizedDescription)
            return SaveStatus.Error
        }
    }
    
    static func loadFile() -> (UserProfile, SaveStatus) {
        do {
            let loadData = try Data(contentsOf: filePath)
            let jsonLoadData = try JSONSerialization.jsonObject(with: loadData, options: .mutableLeaves)
            if let userDictionary = jsonLoadData as? Dictionary<String, String> {
                var userProfile = UserProfile()
                userProfile.nick = userDictionary["nick"]
                userProfile.aboutUser = userDictionary["aboutUser"]
                if let data = Data(base64Encoded: (userDictionary["avatarImage"])!){
                    userProfile.avatarImage = UIImage(data: data)
                } else {
                    userProfile.avatarImage = #imageLiteral(resourceName: "UserPlaceholder")
                }
                return (userProfile, SaveStatus.Success)
            } else {
                return (UserProfile(), SaveStatus.Error)
            }
        } catch {
            return (UserProfile(), SaveStatus.Error)
        }
    }
}


enum SaveStatus {
    case Success
    case Error
}
