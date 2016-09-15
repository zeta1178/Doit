//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Michael Cruz on 9/14/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    // var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        //Create a Task from the outlet Information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //let task = Task()
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Add a new task to array in previouw viewController
        //previousVC.tasks.append(task)
        //previousVC.tableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    
    }
    
}
