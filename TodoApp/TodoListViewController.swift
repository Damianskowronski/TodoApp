//
//  ViewController.swift
//  TodoApp
//
//  Created by Damian Skowroński on 15/07/2019.
//  Copyright © 2019 Damian Skowroński. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Item 1", "Item 2", "Item 3",  "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10", "Item 11", "Item 12",  "Item 13", "Item 14", "Item 15", "Item 16", "Item 17", "Item 18",]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Wybrano \(itemArray[indexPath.row])")
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
        tableView.deselectRow(at: indexPath, animated: true) // usuwa zaznaczenie wiersza 
    }
}

