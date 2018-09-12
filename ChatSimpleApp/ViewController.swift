//
//  ViewController.swift
//  ChatSimpleApp
//
//  Created by Sanad Barjawi on 9/12/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    fileprivate let cellId = "id123"
    let chatMessages = [
        [
            ChatMessage(text: "Section 1, Message 1", isIncoming: true, date: Date.dateFromCustomString("08/03/2018")),
            ChatMessage(text: "Section 1, Message 2", isIncoming: false, date: Date.dateFromCustomString("08/03/2018"))
        ],
        [
            ChatMessage(text: "Section 2, Message 1", isIncoming: true, date: Date.dateFromCustomString("08/03/2018")),
            ChatMessage(text: "Section 2, Message 2", isIncoming: true, date: Date.dateFromCustomString("08/03/2018")),
            ChatMessage(text: "Section 2, Message 3", isIncoming: true, date: Date.dateFromCustomString("08/03/2018"))
        ],
        [
            ChatMessage(text: "Section 3, Message1", isIncoming: false, date: Date.dateFromCustomString("08/03/2018"))
        ]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(white: 0.95, alpha: 1)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return chatMessages.count
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let firstMessageInsection = chatMessages[section].first {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let dateString = dateFormatter.string(from: firstMessageInsection.date)
            
            let label = DateHeaderLabel()
            label.text = dateString
            
            let containerView = UIView()
            containerView.addSubview(label)
            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
            
            return containerView
        }
        return nil
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatMessages[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
        let chatMessage = chatMessages[indexPath.section][indexPath.row]
        cell.chatMessage = chatMessage
        return cell
    }
    
}

