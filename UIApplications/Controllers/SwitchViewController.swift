//
//  SwitchViewController.swift
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 17/02/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    @IBOutlet var lblStatus: UILabel?
    @IBOutlet var lblSwitch: UILabel?
    
    //-----------------------------------------------------------------------
    //    MARK: UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    @IBAction func switchColors(_ sender: UISwitch) {
        
        if (sender.isOn) == true {
            view.backgroundColor = .white
            lblStatus?.text = "Light is On!"
            lblStatus?.textColor = .black
            lblSwitch?.textColor = .black
        }else{
            view.backgroundColor = .black
            lblStatus?.text = "Light is Off!"
            lblStatus?.textColor = .white
            lblSwitch?.textColor = .white
        }
        
    }
}
