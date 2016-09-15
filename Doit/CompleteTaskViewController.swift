//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by Michael Cruz on 9/14/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var task : Task? = nil
    
    //var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //taskLabel.text = task.name
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
      let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //previousVC.tasks.remove(at: previousVC.selectedIndex)
        //previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    

}
