//
//  ViewController.swift
//  LessonOne
//
//  Created by 王成龙 on 2018/1/29.
//  Copyright © 2018年 com.charlieKingStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate func creatIconImage() {
        let img = UIImage(named:"x_index_feature_7")
        let image = UIImageView(image:img)
        self.view.addSubview(image)
    }
    
    fileprivate func creatBundleInfomation() {
        let mainBundle = Bundle.main
        let identifier = mainBundle.bundleIdentifier
        let info = mainBundle.infoDictionary
        let boundleId = mainBundle.object(forInfoDictionaryKey: "CFBundleName")
        let version = mainBundle.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        
        print("identifier:\(String(describing: identifier))")
        print("info:\(String(describing: info))")
        print("boundleId:\(String(describing: boundleId))")
        print("version\(String(describing: version))")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建image
        creatIconImage()
        //打印APP信息
        creatBundleInfomation()
        
        //在顶端显示风火轮
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.orientationChanged(_:)), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func orientationChanged(_ notification:Notification)  {
        let deivce = UIDevice.current
        switch deivce.orientation {
        case .portrait:
            print("home➹在下面 面向保持垂直")
        case .portraitUpsideDown:
            print("home按键 在上面，面向保持垂直")
        case .landscapeLeft:
            print("home按键在右边边，面向保持水平")
        case .landscapeRight:
            print("home按键在左边边，面向保持水平")
        case .faceUp:
            print("home按键 朝上 水平放置")
        case .faceDown:
            print("home按键 朝下 水平放置")
        default:
            print("未知状态")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

