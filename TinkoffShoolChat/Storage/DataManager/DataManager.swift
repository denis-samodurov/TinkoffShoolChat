//
//  DataManager.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 30/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

protocol DataManager {
    func loadData(response: @escaping ((UserProfile, SaveStatus)) -> ())
    func saveData(userProfile: UserProfile, response: @escaping (SaveStatus) -> ())
}
