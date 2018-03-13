//
//  Conversation.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

struct Conversation: ConversationCellConfiguration {
    var name: String?
    var message: String?
    var date: Date?
    var online: Bool
    var hasUnreadMessages: Bool
}

protocol ConversationCellConfiguration {
    var name: String? { get set }
    var message: String? { get set }
    var date: Date? { get set }
    var online: Bool { get set }
    var hasUnreadMessages: Bool { get set }
}
