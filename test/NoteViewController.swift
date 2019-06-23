//
//  NoteViewController.swift
//  test
//
//  Created by Sophie Novak on 01/02/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class NoteViewController: UIViewController,UITextViewDelegate{

    var changed:Bool=false
    
    @IBOutlet weak var notelabel: UILabel!
    @IBOutlet weak var textnote: UITextView!
    
    let managedObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func savenotebutton(_ sender: Any) {
        let entdesc=NSEntityDescription.entity(forEntityName: "UserNotes", in: managedObjectContext)
        let newnote=UserNotes(entity: entdesc!, insertInto:managedObjectContext)
        newnote.notetext=textnote.text
        let now=NSDate()
        newnote.notedate=now
        do{
            try managedObjectContext.save()
            notelabel.text="Note has been saved"
        }
        catch let error as NSError{
            notelabel.text=error.localizedFailureReason
        }
    }
    
    
    
    func textViewDidBeginEditing(_ textView: UITextView){
        if changed == false{
            textView.text=""
            changed=true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textnote.delegate=self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
