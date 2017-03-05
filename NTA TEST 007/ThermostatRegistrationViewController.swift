//
//  ViewController.swift
//  Controller for the main view 
//  NTA TEST 007
//
//  Created by krizzly on 2/22/17.
//  Copyright © 2017 krizzly. All rights reserved.
//

import UIKit

class ThermostatRegistrationViewController: UIViewController,UITextFieldDelegate,
UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    
    //  Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ThermoNameLabel: UILabel!
    
    @IBOutlet weak var thermoIDLabel: UILabel!
    @IBOutlet weak var thermoIDTextField: UITextField!
    
    @IBOutlet weak var thermoLabelLabel: UILabel!
    @IBOutlet weak var thermoLabelTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        ThermoNameLabel.text = textField.text
    }
    
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated:true, completion:nil)  //dismis if cancelled by the user
    }
    

    
    //MARK: ACTIONS
    @IBAction func selectImageFromPhotoLibarary(_ sender: UITapGestureRecognizer)
    {
        nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController,animated: true, completion: nil)
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton)
    {
        ThermoNameLabel.text = "Default Text"
    }

}

