//
//  ViewController.swift
//  Assignment
//
//  Created by Sophie Novak on 08/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    
    @IBOutlet weak var greetinglabel: UILabel!
    @IBOutlet weak var entername: UITextField!
    @IBOutlet weak var nameappear: UILabel!
    @IBOutlet weak var savebutton: UIButton!
    @IBOutlet weak var batchdelete: UIButton!
    
    
    let managedObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

   @IBAction func savebutton(_ sender: Any) {
        let entdesc=NSEntityDescription.entity(forEntityName: "UserDetails", in: managedObjectContext)
        let newdata=UserDetails(entity: entdesc!, insertInto: managedObjectContext)
        newdata.username=entername.text!
        do{
            try managedObjectContext.save()
            nameappear.isHidden=false
            nameappear.text="Saved"
        }
        catch let error as NSError{
            nameappear.text=error.localizedFailureReason
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let entityDescription = NSEntityDescription.entity(forEntityName: "UserDetails", in: managedObjectContext)
        let request=NSFetchRequest<NSFetchRequestResult>(entityName:"UserDetails");request.entity=entityDescription
        do
        {
        var result=try managedObjectContext.fetch(request)
            if(result.count>0)
            {
                let match=result[0] as! NSManagedObject
                
                nameappear.isHidden=false
                nameappear.text="Welcome "
                let thename=match.value(forKey: "username")as? String
                nameappear.text=nameappear.text!+thename!
                greetinglabel.isHidden=true
                entername.isHidden=true
                savebutton.isHidden=true
                batchdelete.isHidden=false
            }
        }
        catch let error as NSError{
            nameappear.text=error.localizedFailureReason
        }
    }
    
    @IBAction func batchdelete(_ sender: Any) {
        let fetchrequest=NSFetchRequest<NSFetchRequestResult>(entityName: "UserDetails")
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest:fetchrequest)
        do{
            try managedObjectContext.execute(batchDeleteRequest)
            nameappear.text="Deleted"
            greetinglabel.isHidden=false
            entername.isHidden=false
            savebutton.isHidden=false
            batchdelete.isHidden=true
        }
        catch let error as NSError{
            nameappear.text=error.localizedFailureReason
        }
        
    }
    
    
   
    @IBAction func unwindtoVC(segue: UIStoryboardSegue){
        
    }



}
