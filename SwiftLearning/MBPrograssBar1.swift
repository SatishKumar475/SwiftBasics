//
//  MBPrograssBar1.swift
//  SwiftLearning
//
//  Created by satish on 02/12/15.
//  Copyright © 2015 Satish. All rights reserved.
//


import UIKit
import CoreGraphics
protocol MBProgressHUDDelegate {
    
    
}
enum MBProgressHUDMode
{
    case Indeterminate
    case Determinate
    case AnnularDeterminate
    case CustomView
    case Text
}
enum MBProgressHUDAnimation {
    case Fade
    case Zoom
    case ZoomOut
    case ZoomIn
}

#if MB_STRONG
#if __has_feature = [objc_arc]
let MB_STRONG = [strong]
    #else
let MB_STRONG = [retain]
#endif
#endif
#if MB_WEAK
#if __has_feature = [objc_arc_weak]
let MB_WEAK = [weak, self]
    #elseif __has_feature = [objc_arc]
let MB_WEAK = [unsafe_unretained]
    #else
let MB_WEAK = [assign]
#endif
#endif
//#if (__IPHONE_OS_VERSION_MIN_REQUIRED > 60000) || (__IPHONE_OS_VERSION_MIN_REQUIRED = 60000) == true
//    let MBLabelAlignmentCenter = NSTextAlignment.Center
//    #else
//    let MBLabelAlignmentCenter = NSTextAlignment.Center
//    #endif

#if NS_BLOCKS_AVAILABLE
    //   var MBProgressHUDCompletionBlock: void
#endif

class MBPrograssBar1: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
func instance()-> AnyObject{
    return true
}
func showHUD(myView : UIViewController,text : NSString,animated:Bool) ->AnyObject{
    myView.view.userInteractionEnabled = false
    myView.navigationController?.navigationBar.userInteractionEnabled = false
//    let hud :MBProgressHUD = MBProgressHUD()
    
    return true
}
func initWithView(view: UIView)->UIView {
   
    return initWithFrame(view.bounds) as! UIView
}
func initWithFrame(frame : CGRect) -> AnyObject {
//         self.init(frame: frame)
    return true
}
