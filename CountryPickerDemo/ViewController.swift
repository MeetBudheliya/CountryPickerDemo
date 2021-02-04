//
//  ViewController.swift
//  CountryPickerDemo
//
//  Created by MAC on 04/02/21.
//

import UIKit
import CountryPicker
class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var countryPicker = CountryPicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.inputView = countryPicker
        let locale = Locale.current
        let code = (locale as NSLocale).object(forKey: NSLocale.Key.countryCode) as! String?
        countryPicker.countryPickerDelegate = self
        countryPicker.showPhoneNumbers = true
        countryPicker.setCountry(code!)
    }
}
extension ViewController:CountryPickerDelegate{
    
    func countryPhoneCodePicker(_ picker: CountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        textField.text = phoneCode
    }
    
    
}
