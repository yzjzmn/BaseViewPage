//
//  NoResultsPage.swift
//  crm
//
//  Created by yzj on 2018/1/19.
//  Copyright © 2018年 long. All rights reserved.
//

import UIKit

class NoResultsPage: UIView {

    class func showPage(_ superView:UIView) -> NoResultsPage {
        let page = Bundle.main.loadNibNamed("NoResultsPage", owner: self, options: nil)![0] as! NoResultsPage
        superView.addSubview(page)
        page.frame = superView.frame
        
        return page
    }

}
