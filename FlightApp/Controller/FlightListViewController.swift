//
//  FlightListViewController.swift
//  FlightApp
//
//  Created by Mac on 16.06.2018.
//  Copyright © 2018 salgara. All rights reserved.
//

import UIKit

class FlightListViewController: UIViewController {

    
    @IBOutlet weak var emailField: UILabel!
    
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let email = email{
            emailField.text = "Email: "+email
        }
    
        
    }


}
