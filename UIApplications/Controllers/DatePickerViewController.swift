//
//  DatePickerViewController.swift
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 18/02/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    @IBOutlet var txtField: UITextField?
    
    let datePicker = UIDatePicker()
    //-----------------------------------------------------------------------
    //    MARK: UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createPicker()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    //-----------------------------------------------------------------------
    //    MARK: Custom methods
    //-----------------------------------------------------------------------
    
    func createPicker() {
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //done button for toolbark
        let done = UIBarButtonItem(barButtonSystemItem: .done
            , target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: true)
        
        txtField?.inputAccessoryView = toolbar
        txtField?.inputView = datePicker
        
        //format picker for date
        
        datePicker.datePickerMode = .date
    }
    
    @objc func donePressed() {
        
        //format date
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        
        let dateString = formatter.string(from: datePicker.date)
        
        txtField?.text = "\(dateString)"
        self.view.endEditing(true)
    }
}
