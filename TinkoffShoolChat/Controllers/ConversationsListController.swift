//
//  ConversationsListController.swift
//  TinkoffShoolChat
//
//  Created by Denis Samodurov on 13/03/2018.
//  Copyright © 2018 Denis Samodurov. All rights reserved.
//

import UIKit

class ConversationsListController: UIViewController, UITableViewDelegate, UITableViewDataSource, ThemesViewControllerDelegate {
    @IBOutlet weak var conversationTable: UITableView!
    
    var conversationOnline = [Conversation]()
    var conversationOffline = [Conversation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.conversationTable.dataSource = self
        self.conversationTable.delegate = self

        self.conversationTable.rowHeight =  UITableViewAutomaticDimension
        self.conversationTable.estimatedRowHeight = 50.0;
        
        self.conversationTable.register(UINib(nibName: "ConversationPreviewView", bundle: nil), forCellReuseIdentifier: "ConversationPreviewView")
        self.conversationTable.tableFooterView = UIView(frame: .zero)
        
        loadConservations()
    }
    
    func loadConservations(){
        let conversationData: ConversationDataProtocol = ConversationDataTest()
        let conservationList = conversationData.getConversationList()
        for conservation in conservationList {
            if conservation.online {
                conversationOnline.append(conservation)
            } else {
                conversationOffline.append(conservation)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectionIndexPath = self.conversationTable.indexPathForSelectedRow {
            self.conversationTable.deselectRow(at: selectionIndexPath, animated: animated)
        }
    }
    
    // MARK: - UITableViewDataSource data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return conversationOnline.count
        } else {
            return conversationOffline.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "ConversationCeil"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ConversationPreviewCell
    
        let currentConversation : Conversation;
        
        if (indexPath.section == 0) {
            currentConversation =  conversationOnline[indexPath.row]
        } else {
            currentConversation =  conversationOffline[indexPath.row]
        }
        
        cell.bindCell(currentConversation)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate delegate
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Online"
        } else {
            return "History"
        }
    }
    
    // MARK: - ThemesViewControllerDelegate
    
    @objc func themesViewController(_ controller: ThemesViewController!, didSelectTheme selectedTheme: UIColor!) {
        logThemeChanging(selectedTheme: selectedTheme)
    }
    
    func logThemeChanging(selectedTheme: UIColor) {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.barTintColor = selectedTheme
        
        print(#function, selectedTheme)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigation =  segue.destination as? UINavigationController,
            let themesViewController =  navigation.topViewController as? ThemesViewController {
            themesViewController.delegate = self
        }
    }
}
