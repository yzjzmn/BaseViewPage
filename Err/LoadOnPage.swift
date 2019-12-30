//
//  LoadOnPage.swift
//  YZJBaseViewPage
//
//  Created by meifute_iOS on 2019/12/30.
//  Copyright © 2019 yzj. All rights reserved.
//

import UIKit

class LoadOnPage: UIView {
    
    /// 配置背景图, 适用于List 或 详情页 的加载
    @IBOutlet weak var bgImgView: UIImageView!
    
    /// 显示加载中的页面,加载详情页
    /// - Parameter superView: 父视图
    class func showPage(_ superView:UIView) -> LoadOnPage {
        let page = Bundle.main.loadNibNamed("LoadOnPage", owner: self, options: nil)![0] as! LoadOnPage
        // 图片不够精致
        superView.addSubview(page)
        page.frame = superView.frame
        
        return page
    }

}
