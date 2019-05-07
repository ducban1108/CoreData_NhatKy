//
//  ViewController.swift
//  CoreData_Diary
//
//  Created by Just Kidding on 4/9/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtText: UITextField!
//    var tableVC = TableViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    

    @IBAction func btnAdd(_ sender: Any) {
        if let content = txtText.text {
            let data = Data(context: AppDelegate.context)
            data.string = content
            AppDelegate.saveContext()
            
//            tableVC.self.fetchObject()
            
        }
        
        dismiss(animated: true, completion: nil)        
    }
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

