//
//  ValentinesController.swift
//  Assignment
//
//  Created by Sophie Novak on 08/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit

class ValentinesViewController: UIViewController {
    
    @IBOutlet weak var valDays: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let now=Date()
        let formatter=DateFormatter()
        
        let thedate="Feb 14, 2018 12:00 PM GMT"
        formatter.dateFormat="MMM dd, yyyy hh:mm a zz"
        let nextval=formatter.date(from: thedate)!
        
        let uc=Calendar.current
        let days=uc.dateComponents([.day], from: now, to:nextval)
        
        valDays.text=String(days.day!)    }
    
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
