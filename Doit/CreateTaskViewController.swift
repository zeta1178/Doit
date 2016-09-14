//
//  CreatTaskViewController.swift
//  Doit
//
//  Created by Michael Cruz on 9/14/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(sender: AnyObject) {
        //Create a Task from the outlet Information

        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.on
        
        // Add a new task to array in previouw viewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewControllerAnimated(true)
    
    }
    
}
