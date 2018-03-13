//
//  ConversationDataConfiguration.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

protocol ConversationDataProtocol {
    func getConversationList() -> [Conversation]
}
