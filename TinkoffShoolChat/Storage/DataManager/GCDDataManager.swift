//
//  GCDDataManager.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 30/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

class GCDDataManager: DataManager {
    func saveData(userProfile: UserProfile, response: @escaping (SaveStatus) -> ()) {
        let globalQueue = DispatchQueue.global(qos: .userInitiated)
        globalQueue.async {
            let status = FileHandler.saveFile(userProfile: userProfile)
            response(status);
        }
    }
    
    func loadData(response: @escaping ((UserProfile, SaveStatus)) -> ()) {
        let globalQueue = DispatchQueue.global(qos: .userInitiated)
        globalQueue.async {
            let status : (UserProfile, SaveStatus) = FileHandler.loadFile()
            response(status);
        }
    }
}
