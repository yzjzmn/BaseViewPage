//
//  LoadingPage.swift
//  crm
//
//  Created by yzj on 2018/1/19.
//  Copyright © 2018年 long. All rights reserved.
//

import UIKit

class LoadingPage: UIView {

    class func showPage(_ superView:UIView) -> LoadingPage {
        let page = Bundle.main.loadNibNamed("LoadingPage", owner: self, options: nil)![0] as! LoadingPage
        superView.addSubview(page)
        page.frame = superView.frame
        
        return page
    }
}
