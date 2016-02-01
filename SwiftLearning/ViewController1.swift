//
//  ViewController1.swift
//  SwiftLearning
//
//  Created by satish on 02/11/15.
//  Copyright (c) 2015 Satish. All rights reserved.
//

import UIKit

class ViewController1: UIViewController , UINavigationControllerDelegate , UIImagePickerControllerDelegate {
    var simageview : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Button
        let sbutton = UIButton(type: UIButtonType.Custom)
        sbutton.frame = CGRectMake(80, 50, 150, 50)
        sbutton.setTitle("Open Camera", forState: UIControlState.Normal)
        sbutton.addTarget(self, action: "openCamera:", forControlEvents: UIControlEvents.TouchUpInside)
        sbutton.backgroundColor = UIColor.redColor()
        sbutton.layer.cornerRadius = 5
        sbutton.layer.borderColor = UIColor.whiteColor().CGColor
        sbutton.layer.borderWidth = 2
        sbutton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        self.view.addSubview(sbutton)
        
        //Imageview
        simageview = UIImageView(frame: CGRectMake(100, 150, 100, 100))
        simageview.layer.cornerRadius = simageview.frame.size.width/2
        simageview.layer.borderWidth = 3
        simageview.layer.borderColor = UIColor.whiteColor().CGColor
        simageview.layer.masksToBounds = false
        simageview.clipsToBounds = true
        self.view.addSubview(simageview)
        simageview.hidden = true
        
        //button
        let spushtoanotherView = UIButton(type: UIButtonType.Custom)
        spushtoanotherView.frame = CGRectMake(0, 200, 100, 50)
        spushtoanotherView.setTitle("Push", forState: UIControlState.Normal)
        spushtoanotherView.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        spushtoanotherView.addTarget(self, action: "pushtoanotherviewcontroller:", forControlEvents: UIControlEvents.TouchUpInside)
        spushtoanotherView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(spushtoanotherView)
        let spoptoanotherView = UIButton(type: UIButtonType.Custom)
        spoptoanotherView.frame = CGRectMake(0, 300, 100, 50)
        spoptoanotherView.setTitle("POP", forState: UIControlState.Normal)
        spoptoanotherView.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        spoptoanotherView.addTarget(self, action: "pOPtoanotherviewcontroller:", forControlEvents: UIControlEvents.TouchUpInside)
        spoptoanotherView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(spoptoanotherView)
        // Do any additional setup after loading the view.
    }
    func pushtoanotherviewcontroller (sender : UIButton!) {
        let view2 = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController2") as? ViewController2
        navigationController?.pushViewController(view2!, animated: true)
    }
    func pOPtoanotherviewcontroller (sender : UIButton!) {
        let view3 = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController3") as? ViewController3
        navigationController?.presentViewController(view3!, animated: true, completion: nil)
    }
    func openCamera (sender : UIButton) {
        let simagepicker = UIImagePickerController()
        simagepicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        simagepicker.delegate = self
        self.presentViewController(simagepicker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("\(info)")
    }
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
//        let simage : UIImage = image
//        simageview.hidden = false
//        simageview.image = simage
//        self.dismissViewControllerAnimated(true, completion: nil)
//    }
    override func viewWillAppear(animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
