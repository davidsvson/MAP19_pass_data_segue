//
//  DisplayViewController.swift
//  SeguesLesson
//
//  Created by David Svensson on 2020-01-10.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    
    @IBOutlet weak var labelView: UILabel!
    
    var receivingName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = receivingName
        
        // Do any additional setup after loading the view.
    }
    



}
