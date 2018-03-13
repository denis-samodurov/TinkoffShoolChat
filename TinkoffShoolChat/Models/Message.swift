//
//  Message.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

struct Mwssage : MessageCellConfiguration {
    var text: String?
    var isIncoming: Bool
}

protocol MessageCellConfiguration {
    var text: String? { get set }
    var isIncoming: Bool { get set }
}
