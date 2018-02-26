//
//  PromptPage.swift
//  crm
//
//  Created by yzj on 2018/1/19.
//  Copyright © 2018年 long. All rights reserved.
//

import Foundation
import UIKit

func kRGBColorFromHex(rgbValue: Int) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,
                   alpha: 1.0)
}

class PromptPage: UIView {
    
    var pages = [UIView]()
    
    lazy var errResultsPage: ErrResultsPage = {
        () -> ErrResultsPage in
        let page = ErrResultsPage.showPage(self)
        return page
    }()
    
    lazy var errNetworkPage: ErrNetworkPage = {
        () -> ErrNetworkPage in
        let page = ErrNetworkPage.showPage(self)
        return page
    }()
    
    lazy var noResultsPage: NoResultsPage = {
        () -> NoResultsPage in
        let page = NoResultsPage.showPage(self)
        return page
    }()
    
    lazy var loadingPage: LoadingPage = {
        () -> LoadingPage in
        let page = LoadingPage.showPage(self)
        return page
    }()

    //init superAdd
    init(_ viewCtr:UIViewController) {
        let superView = viewCtr.view
        
        let width = viewCtr.view.frame.size.width
        let height = viewCtr.view.frame.size.height
        
        super.init(frame: CGRect(x:0,y:0,width:width,height:height))
        superView?.addSubview(self)
        self.isHidden = true
        
        pages.append(noResultsPage)
        pages.append(errNetworkPage)
        pages.append(errResultsPage)
        pages.append(loadingPage)
        
    }

    func showLoadingPage() {
        hideAllPages()
        self.loadingPage.isHidden = false
    }
    
    func showNoResultsPage() {
        hideAllPages()
        self.noResultsPage.isHidden = false
    }
    
    func showErrNetworkPage(_ block:@escaping () -> Void) {
        hideAllPages()
        self.errNetworkPage.isHidden = false
        self.errNetworkPage.block = block
    }
    
    func showErrResultsPage(_ block:@escaping () -> Void) {
        hideAllPages()
        self.errResultsPage.isHidden = false
        self.errResultsPage.block = block
    }
    
    //showErrResultsPage with errMsg
    func showErrResultsPage(_ toast:String? , block:@escaping () -> Void) {
        hideAllPages()
        self.errResultsPage.isHidden = false
        self.errResultsPage.titleLabel.text = toast
        self.errResultsPage.block = block
    }
    
    func hideAllPages() {
        self.isHidden = false
        
        errNetworkPage.isHidden  = true
        errResultsPage.isHidden = true
        noResultsPage.isHidden  = true
        loadingPage.isHidden    = true
    }
    
    func dismiss() {
        self.isHidden = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
