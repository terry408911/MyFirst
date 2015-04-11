//
//  ViewController.swift
//  FirstApp
//
//  Created by Terry on 15/4/4.
//  Copyright (c) 2015年 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        originScale.resignFirstResponder()
        finalScale.resignFirstResponder()
        originDate.resignFirstResponder()
    }
    
    @IBAction func Sure(sender: AnyObject) {
        //when user did all input,tap this button to compute the result
        originScale.resignFirstResponder()
        finalScale.resignFirstResponder()
        originDate.resignFirstResponder()
        var origin = originScale.text.toInt()
        if(origin < 2 || origin > 36){
            var alert = UIAlertView()
            alert.title = "警告！"
            alert.message = "请输入原进制"
            alert.addButtonWithTitle("OK")
            alert.show()
        }//if origin scale
        else{
            var final = finalScale.text.toInt()
            if(final < 2 || final > 36){
                var alert = UIAlertView()
                alert.title = "警告！"
                alert.message = "请输入目的进制"
                alert.addButtonWithTitle("OK")
                alert.show()
            }//if final scale
            else{
                
                var date = originDate.text.toInt()
                var a:Int64
                for(var i = 0;date == 0;i++){
                    
                }
                
                
//                if(){
//                     var alert = UIAlertView()
//                     alert.title = "警告！"
//                     alert.message = "请输入原数据"
//                     alert.addButtonWithTitle("OK")
//                     alert.show()
//                }
            }//if final scale else
            
        }//if origin scale else
        
    }//method Sure
    
    @IBOutlet weak var originScale: UITextField!
    
    @IBOutlet weak var originDate: UITextField!
    
    @IBOutlet weak var finalScale: UITextField!
    
    @IBOutlet weak var finalDate: UITextField!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

