//
//  ErrNetworkPage.swift
//  crm
//
//  Created by yzj on 2018/1/19.
//  Copyright © 2018年 long. All rights reserved.
//

import UIKit

class ErrNetworkPage: UIView {

    typealias retryAction = () -> Void
    
    @IBOutlet weak var retryBtn: UIButton!
    var block:retryAction?
    
    class func showPage(_ superView:UIView) -> ErrNetworkPage {
        let errNetworkPage = Bundle.main.loadNibNamed("ErrNetworkPage", owner: self, options: nil)![0] as! ErrNetworkPage
        superView.addSubview(errNetworkPage)
        errNetworkPage.frame = superView.frame
        errNetworkPage.retryBtn.layer.cornerRadius = 4
        errNetworkPage.retryBtn.layer.borderWidth = 0.5
        errNetworkPage.retryBtn.layer.borderColor = kRGBColorFromHex(rgbValue: 0x989898).cgColor
        errNetworkPage.retryBtn.layer.masksToBounds = true
        
        return errNetworkPage
    }
    
    @IBAction func retryBtnPress(_ sender: Any) {
        if (block != nil) {
            block!()
        }
    }
    
    
}
