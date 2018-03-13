//
//  ConversationPreviewView.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import UIKit

class ConversationPreviewView: UITableViewCell {
    @IBOutlet var conversationCeil: UITableViewCell!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var conversationImage: UIImageView!
    
    func bindCell(_ conversation: ConversationCellConfiguration) {
        nameLabel.text = conversation.name ?? "No name"
        
        if let date = conversation.date {
            let dateFormatter = DateFormatter()
            let calendar = Calendar.current
            if(calendar.isDateInToday(date)){
                dateFormatter.dateFormat = "hh:mm"
                dateLabel.text = dateFormatter.string(from: date)
            } else {
                dateFormatter.dateFormat = "dd MMM"
                dateLabel.text = dateFormatter.string(from: date)
            }
        } else {
            dateLabel.text = ""
        }
        
        if let message = conversation.message {
            lastMessageLabel.text = message
        } else {
            lastMessageLabel.font = UIFont.italicSystemFont(ofSize: 14.0)
            lastMessageLabel.text = "No messages yet"
        }
        
        conversationCeil.backgroundColor = conversation.online ? .white : UIColor(red: 250/255.0, green: 255/255.0, blue: 148/255.0, alpha: 1.0)
    }
}
