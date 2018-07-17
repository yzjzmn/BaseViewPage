//
//  ViewController.swift
//  YZJBaseViewPage
//
//  Created by bimuyu on 2018/7/17.
//  Copyright © 2018年 yzj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var basePage : PromptPage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        basePage = PromptPage.init(self)
        loadingAndDismiss()
    }

    @IBAction func showLoading(_ sender: Any) {
        loadingAndDismiss()
    }

    func loadingAndDismiss() -> Void {
        basePage?.showLoadingPage()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5.0) {
            self.basePage?.dismiss()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

