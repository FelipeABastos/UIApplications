//
//  SegmentedControlViewController.swift
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 17/02/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit

class SegmentedControllViewController: UIViewController {
    
    @IBOutlet var vwView: UIView?
    @IBOutlet var scSegment: UISegmentedControl?
    
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
    
    @IBAction func scSegmentTapped(_ sender: Any) {
        
        let getIndex = scSegment?.selectedSegmentIndex
        print(getIndex!)
        
        switch (getIndex) {
        case 0:
            self.vwView?.backgroundColor = .red
            break
        case 1:
            self.vwView?.backgroundColor = .blue
        default:
            print("no select")
        }
    }
}
