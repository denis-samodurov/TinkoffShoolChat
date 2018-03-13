//
//  ConversationData.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import Foundation

class ConversationDataTest : ConversationDataProtocol {
    var conversation = [Conversation]()
    
    func getConversationList() -> [Conversation]{
        conversation.append(Conversation(name: "Вика", message: nil, date: nil, online: true, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Мила", message: "Сколько осталось до экзамена?", date: nil, online: true, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Дима", message: "Ты куда пропал?", date: Date(), online: true, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Егор", message: "Я скоро буду у тебя", date: Date().addingTimeInterval(-3600), online: true, hasUnreadMessages: false));
        conversation.append(Conversation(name: "Оля", message: nil, date: Date().addingTimeInterval(-200000), online: true, hasUnreadMessages: false));
        conversation.append(Conversation(name: "Коля", message: "Куда пойдём сегодня?", date: Date().addingTimeInterval(-(300000)), online: true, hasUnreadMessages: false));
        conversation.append(Conversation(name: "Зоя", message: "Я устала, поёду слушать музыку", date: Date(), online: true, hasUnreadMessages: false));
        conversation.append(Conversation(name: "Том", message: nil, date: nil, online: true, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Костя", message: "Слышал новость?", date: nil, online: true, hasUnreadMessages: true));
        conversation.append(Conversation(name: nil, message: nil, date: nil, online: true, hasUnreadMessages: false));
     
        conversation.append(Conversation(name: "Рома", message: nil, date: Date(), online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Игорь", message: "Хочу кушать", date: Date(), online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Виктор", message: nil, date: nil, online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Аня", message: "Не надо идти ко мне", date: nil, online: false, hasUnreadMessages: false));
        conversation.append(Conversation(name: "Вероника", message: "Во сколько просыпаешься?", date: Date(), online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Юля", message: "Удачи завтар", date: nil, online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Сергей", message: "Купи мне цветы", date: Date().addingTimeInterval(-400000), online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Лариса", message: "Я уезжаю завтра", date: Date().addingTimeInterval(-500000), online: false, hasUnreadMessages: false));
        conversation.append(Conversation(name: nil, message: nil, date: Date().addingTimeInterval(-100), online: false, hasUnreadMessages: true));
        conversation.append(Conversation(name: "Макс", message: "Приходи ко мне пить чай", date: Date(), online: false, hasUnreadMessages: true));

        return conversation;
    }
}
