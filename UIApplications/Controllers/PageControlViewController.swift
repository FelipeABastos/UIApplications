//
//  PageControlViewController.swift
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 18/02/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

import UIKit

class PageControlViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var pcPageControll: UIPageControl?
    @IBOutlet var svScroll: UIScrollView?
    
    var images: [String] = ["0", "1", "2"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    //-----------------------------------------------------------------------
    //    MARK: UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pcPageControll?.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = (svScroll?.frame.size.width)!*CGFloat(index)
            frame.size = (svScroll?.frame.size)!
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.svScroll?.addSubview(imgView)
        }
        svScroll?.contentSize = CGSize(width: ((svScroll?.frame.size.width ?? 0) * CGFloat(images.count)), height: (svScroll?.frame.size.height ?? 0))
        svScroll?.delegate = self
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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        
        pcPageControll?.currentPage = Int(pageNumber)
        
    }
    
    //-----------------------------------------------------------------------
    //    MARK: Custom methods
    //-----------------------------------------------------------------------
    
}
