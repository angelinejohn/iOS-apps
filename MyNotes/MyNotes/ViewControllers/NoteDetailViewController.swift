//
//  NoteDetailViewController.swift
//  MyNotes
//
//  Created by Angeline Flora John on 11/23/23.
//

import UIKit
import CoreData

class NoteDetailViewController: UIViewController {
    
    @IBOutlet var noteTitle: UITextField!
    @IBOutlet var noteDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveNote(_ sender: Any) {
        //save the note into CoreData
        //go back
        self.navigationController?.popToRootViewController(animated: true)
    }
}
