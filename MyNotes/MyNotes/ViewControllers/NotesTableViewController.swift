//
//  NotesTableViewController.swift
//  MyNotes
//
//  Created by Angeline Flora John on 11/23/23.
//

import UIKit
import CoreData

public var allNotes = [Notes]() //notes array to store all my notes
class NotesTableViewController: UIViewController {

    @IBOutlet var notesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "My Notes"
        notesTable.delegate = self
        notesTable.dataSource = self
        
        //reload the data
        
    }
    
    @IBAction func addNewNote(_ sender: Any) {
        performSegue(withIdentifier: "ToNoteDetailVC", sender: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        notesTable.reloadData()
    }
}

extension NotesTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of rows to be displayed in the table
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //what detail should be shown in the table cell
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //when a cell is selected highlight and segue to the note detail view controller
        performSegue(withIdentifier: "ToNoteDetailVC", sender: nil)
        
        //set the note detail
    }
}
