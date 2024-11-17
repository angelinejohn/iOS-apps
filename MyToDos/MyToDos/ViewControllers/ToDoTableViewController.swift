//
//  ToDoTableViewController.swift
//  MyToDos
//
//  Created by ajohn on 11/30/23.
//

import UIKit

class ToDoTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "To Do List"
    }
    
    @IBAction func addTask(_ sender: Any) {
        performSegue(withIdentifier: "ToTaskDetailVC", sender: nil)
    }
    
}
