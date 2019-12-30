//
//  LoadingOnViewController.swift
//  YZJBaseViewPage
//
//  Created by meifute_iOS on 2019/12/30.
//  Copyright © 2019 yzj. All rights reserved.
//

import UIKit

class LoadingOnViewController: UIViewController {
    var basePage : PromptPage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        basePage = PromptPage.init(self)
        
        //api request
        requestNet()
    }
    
    func requestNet() {
        basePage?.showLoadingOnPage()

        // if api success, do: basePage?.dismiss()
        
        // basePage?.dismiss()
        
        // else api fail, do: basePage?.showNoResultsPage
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            self.basePage?.showNoResultsPage()
        }
        
    }
    
}
