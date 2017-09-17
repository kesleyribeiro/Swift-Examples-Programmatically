//
//  ViewController.swift
//  TextField Programmatically
//
//  Created by Kesley Ribeiro on 15/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // var textField
    var kesleyTxtField: UITextField!

    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // TextField Programmatically
        kesleyTxtField = UITextField()
        kesleyTxtField.frame = CGRect(x: 0, y: 100, width: 250, height: 40)
        kesleyTxtField.center.x = self.view.center.x
        kesleyTxtField.backgroundColor = UIColor(white: 0.3, alpha: 0.2) //.lightGray
        
        kesleyTxtField.text = ""
        kesleyTxtField.placeholder = "KESLEY RIBEIRO"
        kesleyTxtField.font = UIFont.systemFont(ofSize: 17)
        kesleyTxtField.textAlignment = .left
        kesleyTxtField.minimumFontSize = 15
        
        kesleyTxtField.borderStyle = .roundedRect
        kesleyTxtField.clearsOnBeginEditing = false
        kesleyTxtField.adjustsFontSizeToFitWidth = true
        kesleyTxtField.allowsEditingTextAttributes = true
        kesleyTxtField.clearButtonMode = .always
        
        self.view.addSubview(kesleyTxtField)
        
        kesleyTxtField.delegate = self
        
        if kesleyTxtField.isEditing == false {
            
            print("\nIsn't editing\n")
        }
        
        /*
        let didReturn : Bool = textFieldShouldReturn(kesleyTxtField)
        
        if didReturn == true {
            print("\nRETURN IS TRUE")
        } else {
            print("\nRETURN IS FALSE")
        }
        */
    }
    
    // *********** METHODS AND PROTOCOLS ***********

    // Firstly exec func when about to begin editing
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {

        print("\nSHOULD BEGIN")
        
        // Change color background view
        view.backgroundColor = UIColor.yellow
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.white
        
        return true
    }
    
    // First exec func when about to end editing
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    
        print("\nSHOULD END")
        
        // Change color background view
        view.backgroundColor = UIColor.white
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.blue
        
        return true
    }
    
    // Second exec func when did start editing
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("\nDID BEGIN")
        
        // Change color background view
        view.backgroundColor = UIColor.red
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.lightText
    }
    
    // Seconly exec func when editing is done
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("\nDID END")
        
        // Change color background view
        view.backgroundColor = UIColor.black
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.green
    }
    
    // Seconly exec func when editing is done with reason
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
    
        if reason == UITextFieldDidEndEditingReason.committed {
         
            print("\nDID END WITH REASON")
            
            // Change color background view
            view.backgroundColor = UIColor.brown
            
            // Change color background textfield
            kesleyTxtField.backgroundColor = UIColor.white
        }
    }
    
    // First exec func when chars are getting changed
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        print("\nCHANGE CHARACTERS")
        
        // Change color background view
        view.backgroundColor = UIColor.black
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.red
        
        return true
    }
    
    // First exec func when clear button of TextField is clicked
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        print("\nCLEAR")
        
        // Change color background view
        view.backgroundColor = UIColor.cyan
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.lightGray
        
        return true
    }
    
    // Exec when clicked "Return" key on iOS keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("\nRETURN/DONE")
        
        textField.endEditing(true)
        
        // Change color background view
        view.backgroundColor = UIColor.purple
        
        // Change color background textfield
        kesleyTxtField.backgroundColor = UIColor.yellow
        
        return true
    }
    
    
    
    // Exec func hiden the keyboard when touch in view
    override func touchesBegan(_ touches: Set<UITouch>, with withEvent: UIEvent?) {
        
        print("\nTouch in view and hide the keyboard")
        
        view.endEditing(true)
    }
    
}

