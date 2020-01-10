//
//  ViewController.swift
//  SeguesLesson
//
//  Created by David Svensson on 2020-01-10.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name : String?
    let segueToDisplayId = "segueToDisplayController"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        name = "David"
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToDisplayId, sender: self)
        
    }
    
    // funktionen körs alltid precis innan en segue körs,
    // oavsett vilken segue
    // vi tar den ViewController vi är på väg till och sätter "recieivingName"
    //Variabeln till det som vi har i name variabeln i den här viewcontrollern
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToDisplayId {
            let destinationVC = segue.destination as! DisplayViewController
            
            
            destinationVC.receivingName = name
        }
    }
    
    

}

