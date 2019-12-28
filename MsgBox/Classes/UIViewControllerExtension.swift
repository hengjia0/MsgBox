//
//  MsgBox.swift
//  ZhaiPp
//
//  Created by 关宝 on 26/12/2019.
//  Copyright © 2019 Bob. All rights reserved.
//

import Foundation
import MBProgressHUD

extension UIViewController {
    //包含两个常用方法,转圈的indeterminate，文本的text
    
    public func showMsg(_ text: String){
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .text
             hud.contentColor = UIColor.white
             hud.bezelView.color = UIColor.black.withAlphaComponent(0.5)
             hud.bezelView.style = .solidColor
             hud.detailsLabel.text = text
             hud.removeFromSuperViewOnHide = true
             hud.hide(animated: true, afterDelay: 1.2)
    }
    
    public func showLoad(_ text: String){
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .indeterminate
             hud.contentColor = UIColor.white
             hud.bezelView.color = UIColor.black.withAlphaComponent(0.5)
             hud.bezelView.style = .solidColor
             hud.detailsLabel.text = text
             hud.removeFromSuperViewOnHide = true
             //hud.hide(animated: true, afterDelay: 1.2)
    }
    
    public func hideLoad(animated: Bool = true){
        MBProgressHUD.hide(for: self.view, animated: animated)
    }
}

