//
//  ViewController.swift
//  swift2.0
//
//  Created by Nitin Gohel on 21/09/15.
//  Copyright © 2015 Olbuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
//       // sleep(5)
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OpenAlert(sender: AnyObject) {
        
        
//        
//        UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(10, 8, 250, 30)];
//        lbl.text = @"This is a label";
//        lbl.textAlignment = NSTextAlignmentCenter;
//        lbl.textColor = [UIColor whiteColor];
//        [viewController.view addSubview:lbl];
//        
//        UITextField *tf = [[UITextField alloc]initWithFrame:CGRectMake(10, 35, 250, 30)];
//        tf.borderStyle = UITextBorderStyleRoundedRect;
//        tf.placeholder = @"Enter your name";
//        [viewController.view addSubview:tf];
//        
//        [alertController setValue:viewController forKey:@"contentViewController"];
//        
//        UIAlertAction *cancelAction = [UIAlertAction
//        actionWithTitle:@"Cancel"
//        style:UIAlertActionStyleCancel
//        handler:^(UIAlertAction *action)
//        {
//        NSLog(@"Cancel action");
//        }];
//        
//        UIAlertAction *okAction = [UIAlertAction
//        actionWithTitle:@"OK"
//        style:UIAlertActionStyleDefault
//        handler:^(UIAlertAction *action)
//        {
//        NSLog(@"OK action");
//        
        
        
        
        let alert = UIAlertController(title: "Alert Controller", message: "Alert Message", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: UIAlertActionStyle.Destructive) { (action) in
                
        }
        
        let confirmAction = UIAlertAction(
            title: "OK", style: UIAlertActionStyle.Default) { (action) in
                
        }
        
        alert.addAction(confirmAction)
        alert.addAction(cancelAction)
        
        let VC = UIViewController()
        VC.view.backgroundColor = UIColor.blackColor()
        
        
        let lbl =  UILabel()
        lbl.frame =  CGRectMake(10, 8, 250, 30)
        lbl.text = "this is a label"
        lbl.textAlignment = NSTextAlignment.Center
        lbl.textColor = UIColor.whiteColor()
        VC.view .addSubview(lbl)
        
        
        let txt = UITextField()
        txt.frame =  CGRectMake(10, 35, 250, 30)
        txt.borderStyle = UITextBorderStyle.RoundedRect
        txt.placeholder = "enter text"
        VC.view .addSubview(txt)
        
        
        alert.setValue(VC, forKey: "contentViewController")
      
        self.presentViewController(alert, animated: true, completion: nil)

    }

}

