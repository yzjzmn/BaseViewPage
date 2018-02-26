//
//  ErrResultsPage.swift
//  crm
//
//  Created by yzj on 2018/1/19.
//  Copyright © 2018年 long. All rights reserved.
//

import UIKit

class ErrResultsPage: UIView {

    typealias retryAction = () -> Void
    
    @IBOutlet weak var retryBtn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var block:retryAction?
    
    class func showPage(_ superView:UIView) -> ErrResultsPage {
        let errResultsPage = Bundle.main.loadNibNamed("ErrResultsPage", owner: self, options: nil)![0] as! ErrResultsPage
        superView.addSubview(errResultsPage)
        errResultsPage.frame = superView.frame
        errResultsPage.retryBtn.layer.cornerRadius = 4
        errResultsPage.retryBtn.layer.borderWidth = 0.5
        errResultsPage.retryBtn.layer.borderColor = kRGBColorFromHex(rgbValue: 0x989898).cgColor
        errResultsPage.retryBtn.layer.masksToBounds = true
        
        return errResultsPage
    }
    
    @IBAction func retryBtnPress(_ sender: Any) {
        if (block != nil) {
            block!()
        }
    }

}
