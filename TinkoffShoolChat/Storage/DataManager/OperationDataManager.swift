//
//  OperationDataManager.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 30/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

class OperationDataManager : DataManager{
    func saveData(userProfile: UserProfile, response: @escaping (SaveStatus) -> ()) {
        let queue = OperationQueue()
        queue.name = "ru.aristovz.loadOperation"
        
        queue.addOperation({
            let status = FileHandler.saveFile(userProfile: userProfile)
            response(status);
        })
    }
    
    func loadData(response: @escaping ((UserProfile, SaveStatus)) -> ()) {
        let queue = OperationQueue()
        queue.name = "ru.aristovz.saveOperation"
        
        queue.addOperation({
            let status : (UserProfile, SaveStatus) = FileHandler.loadFile()
            response(status);
        })
    }
}
