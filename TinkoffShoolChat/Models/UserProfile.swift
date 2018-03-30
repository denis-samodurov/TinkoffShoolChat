//
//  UserProfile.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 30/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

struct UserProfile: UserProfileConfiguration {
    var nick: String?
    var aboutUser: String?
    var avatarImage: UIImage?
}

protocol UserProfileConfiguration {
    var nick: String? { get set }
    var aboutUser: String? { get set }
    var avatarImage: UIImage? {get set }
}
