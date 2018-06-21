

import UIKit

class FirstViewController: UIViewController {    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInAction(_ sender: Any) {
        
//        
//        if let email = emailField.text, let password = passwordField.text{
//            
//            if !email.isEmpty && !password.isEmpty{
//                
//                
//                performSegue(withIdentifier: "nextBtnSegueId", sender: email)
//                
//                
//            }
//            
//        }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier ==  "nextBtnSegueId"{
//            if let destination = segue.destination as? FlightListViewController{
//                if let data = sender as? String{
//                    destination.email = data
//                }
//            }
//        }
        
    }
    
}

