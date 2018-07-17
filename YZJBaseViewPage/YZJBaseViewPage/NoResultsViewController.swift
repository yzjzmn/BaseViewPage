//
//  NoResultsViewController.swift
//  YZJBaseViewPage
//
//  Created by bimuyu on 2018/7/17.
//  Copyright © 2018年 yzj. All rights reserved.
//

import UIKit

class NoResultsViewController: UIViewController {

    var basePage : PromptPage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        basePage = PromptPage.init(self)

        //网络请求
        requestNet()
    }

    func requestNet() {
        basePage?.showLoadingPage()

        //成功的话
//        basePage?.dismiss()
        //没有结果
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            self.basePage?.showNoResultsPage()
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}