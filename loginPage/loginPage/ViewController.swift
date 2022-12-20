//
//  ViewController.swift
//  loginPage
//
//  Created by Mac on 23/11/22.
//

import UIKit
import SDWebImage
class DetailsViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var rollNoLabel: UILabel!
    @IBOutlet weak var emailIdLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rollNoTextField: UITextField!
    @IBOutlet weak var emailidTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameTextField.text = ""
        self.lastNameTextField.text = ""
        self.emailidTextField.text = ""
        self.rollNoTextField.text = ""
        self.firstNameLabel.text = ""
        self.lastNameLabel.text = ""
        self.rollNoLabel.text = ""
        self.emailIdLabel.text = ""
        
         
        // Do any additional setup after loading the view.
    }
    @IBAction func btnClickTOSubmit(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let dataToBePassed = self.firstNameTextField.text
        let dataToBePassed1 = self.lastNameTextField.text
        let dataToBePassed2 = self.rollNoTextField.text
        let dataToBePassed3 = self.emailidTextField.text
        let dataToBePassed4 = self.firstNameLabel.text
        let dataToBePassed5 = self.lastNameLabel.text
        let dataToBePassed6 = self.rollNoLabel.text
        let dataToBePassed7 = self.emailIdLabel.text
    
        
        SecondViewController.firstNameTextField = dataToBePassed
        SecondViewController.lastNameTextField = dataToBePassed1
        SecondViewController.emailidTextField = dataToBePassed
        SecondViewController.rollNoTextField = dataToBePassed
        SecondViewController.firstNameLabel = dataToBePassed
        SecondViewController.lastNameLabel = dataToBePassed
        SecondViewController.emailIdLabel = dataToBePassed
        SecondViewController.rollNoLabel = dataToBePassed
        
        SecondViewController.secondVC = self
        
        func passDataToFirstViewController(textToPass: String)
 
        self.navigationController?.pushViewController(SecondViewController, animated: true)
        
    }
    

}

