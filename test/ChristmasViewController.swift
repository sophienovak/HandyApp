//
//  XmasController.swift
//  Assignment
//
//  Created by Sophie Novak on 08/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit

class ChristmasViewController: UIViewController {
    
    @IBOutlet weak var xmasDays: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let now=Date()
        let formatter=DateFormatter()
        
        let thedate="Dec 25, 2018 12:00 PM GMT"
        formatter.dateFormat="MMM dd, yyyy hh:mm a zz"
        let nextxmas=formatter.date(from: thedate)!
        
        let uc=Calendar.current
        let days=uc.dateComponents([.day], from: now, to:nextxmas)
        
        xmasDays.text=String(days.day!)
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

