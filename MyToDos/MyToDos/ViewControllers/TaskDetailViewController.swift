//
//  TaskDetailViewController.swift
//  MyToDos
//
//  Created by ajohn on 11/30/23.
//

import UIKit

class TaskDetailViewController: UIViewController {

    enum Priority: String {
        case low, high, medium
    }
    
    @IBOutlet var prioritySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // set the prioriy picker
    }
    
    @IBAction func saveTask(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
