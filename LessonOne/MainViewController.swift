//
//  MainViewController.swift
//  LessonOne
//
//  Created by 王成龙 on 2018/3/21.
//  Copyright © 2018年 com.charlieKingStudios. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("hello world")
//        tag1.0
        getsomethingforNet()
//        tag2.0
        getApp()
        
        // Do any additional setup after loading the view.
    }
    func getsomethingforNet(){
        
        print("get some thing")
    }
    func getApp() {
        
        print("get some app infomation")
    }
    func push(){
        print("123")
    }

    //    修改这个方法
    func secondMaste() {
        print("change")
        print("secondMater")
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
