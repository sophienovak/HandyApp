//
//  ViewController.swift
//  Assignment
//
//  Created by Sophie Novak on 08/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    
    @IBOutlet weak var greetinglabel: UILabel!
    @IBOutlet weak var entername: UITextField!
    @IBOutlet weak var nameappear: UILabel!
    
    let managedObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func savebutton(_ sender: Any) {
        let entdesc=NSEntityDescription.entity(forEntityName: "UserDetails", in: managedObjectContext)
        let newdata=UserDetails(entity: entdesc!, insertInto: managedObjectContext)
        newdata.username=entername.text!
        do{
            try managedObjectContext.save()
        }
        catch let error as NSError{
            nameappear.text=error.localizedFailureReason
        }
    }
    
   
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


