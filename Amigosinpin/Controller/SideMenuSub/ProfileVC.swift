//
//  ProfileVC.swift
//  Amigosinpin
//
//  Created by Surya Chowdary on 17/09/20.
//  Copyright © 2020 WebMobRil. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    let datePicker = UIDatePicker()
    @IBOutlet weak var selectImgBtnOutlet: UIButton!
    var imgStr:String?
    var imagePicker = UIImagePickerController()
    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var languageTF: UITextField!
    @IBOutlet weak var birthDayTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var editImg: UIImageView!
    @IBOutlet weak var profilePic: UIImageView!
    var editBool:Bool = true
    let languagePicker = UIPickerView()
    var languageArr:[String] = ["English"]
    override func viewDidLoad() {
        super.viewDidLoad()
        viewAndEditProfileHandling()
        imagePicker.delegate = self
        showDatePicker()
        self.languagePicker.delegate = self
        self.languagePicker.dataSource = self
        languageTF.inputView = languagePicker
        
    }
    
    @IBAction func editBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func editProfileBtnAction(_ sender: UIButton) {
        if editBool == true{
            editBool = false
            editImg.image = UIImage(named: "check")
            titleLB.text = "Edit Profile"
            viewAndEditProfileHandling()
        }else{
            editBool = true
            editImg.image = UIImage(named: "pencilz")
            titleLB.text = "Profile"
            viewAndEditProfileHandling()
        }
    }
    
    func viewAndEditProfileHandling(){
        if editBool == true {
            nameTF.text = "Surya Teja"
            mobileNumberTF.text = "9063440345"
            emailTF.text = "suryateja.atluri@webmobril.com"
            birthDayTF.text = "21-08-1992"
            languageTF.text = "English"
            nameTF.isUserInteractionEnabled = false
            mobileNumberTF.isUserInteractionEnabled = false
            emailTF.isUserInteractionEnabled = false
            birthDayTF.isUserInteractionEnabled = false
            languageTF.isUserInteractionEnabled = false
            selectImgBtnOutlet.isUserInteractionEnabled = false
        }else{
            nameTF.isUserInteractionEnabled = true
            mobileNumberTF.isUserInteractionEnabled = true
            emailTF.isUserInteractionEnabled = true
            birthDayTF.isUserInteractionEnabled = true
            languageTF.isUserInteractionEnabled = true
            selectImgBtnOutlet.isUserInteractionEnabled = true
        }
    }
    // MARK: - Image Selection Button Action .
    @IBAction func camerBtnAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
           alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
               self.openCamera()
           }))
           
           alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
               self.openGallary()
           }))
           
           alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func openCamera()
    {
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera))
        {
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func openGallary()
    {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
}

//MARK: - UIImagePickerControllerDelegate
extension ProfileVC:  UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[.editedImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        // Set photoImageView to display the selected image.
        profilePic.image = selectedImage
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.isNavigationBarHidden = false
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - 🍎 Date Picker for selecting the DOB .
extension ProfileVC {
    func showDatePicker(){
        datePicker.datePickerMode = .date
        datePicker.maximumDate=NSDate() as Date
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        birthDayTF.inputAccessoryView = toolbar
        birthDayTF.inputView = datePicker
    }
    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        birthDayTF.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
}

extension ProfileVC:UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return languageArr.count
        
    }
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return languageArr[row]
        
    }
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
            languageTF.text = languageArr[row]
            
        }
    }

