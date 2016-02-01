//
//  ViewController.swift
//  SwiftLearning
//
//  Created by satish on 27/10/15.
//  Copyright (c) 2015 Satish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate,UITextViewDelegate, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var sCollectionview : UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Segment controller
        let animals = ["fish", "cat", "chicken", "dog"]
        let sortedAnimals = animals.sort { (one: String, two: String) -> Bool in
            return two < one
        }
        print("the sorted items are \(sortedAnimals)")
        let sSegment = UISegmentedControl(items: ["Satish","kumar","manam"])
        sSegment.frame = CGRectMake(0, 10, self.view.frame.size.width, 40)
        sSegment.backgroundColor = UIColor.purpleColor()
        sSegment.addTarget(self, action: "segmentClicked:", forControlEvents: UIControlEvents.ValueChanged)
        sSegment.tintColor = UIColor.magentaColor()
        self.view.addSubview(sSegment)
        // button
        let sButton = UIButton(type: UIButtonType.System)
        sButton.frame = CGRectMake(self.view.frame.size.width/2-50, 150, 100, 40)
        sButton.backgroundColor = UIColor.redColor()
        sButton.setTitle("SampleButton", forState: UIControlState.Normal)
        sButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        sButton.addTarget(self, action: "ClickMe:", forControlEvents: UIControlEvents.TouchUpInside)
        sButton.layer.borderColor = UIColor.yellowColor().CGColor
        sButton.layer.borderWidth = 2.0
        self.view.addSubview(sButton)
        let sButton1 = UIButton(type: UIButtonType.System)
        sButton1.frame = CGRectMake(0, 60, 150, 30)
        sButton1.backgroundColor = UIColor.redColor()
        sButton1.setTitle("CollectionView", forState: UIControlState.Normal)
        sButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        sButton1.addTarget(self, action: "ClickMeforCollectionView:", forControlEvents: UIControlEvents.TouchUpInside)
        sButton1.layer.borderColor = UIColor.yellowColor().CGColor
        sButton1.layer.borderWidth = 2.0
        self.view.addSubview(sButton1)
        
        // imageview
        let sImageview = UIImageView(frame: CGRectMake(self.view.frame.size.width/2-50, 80, 100, 60))
        sImageview.image = UIImage(named: "123.png")
        //        sImageview.layer.borderColor = UIColor.lightGrayColor().CGColor
        //        sImageview.layer.borderWidth = 2
        self.view.addSubview(sImageview)
        
        //view
        let sView = UIView(frame: CGRectMake(self.view.frame.size.width/2-100, 430, 200, 100))
        sView.backgroundColor = UIColor.magentaColor()
        sView.layer.borderColor = UIColor.blackColor().CGColor
        sView.layer.borderWidth = 3
        self.view.addSubview(sView)
        // scroll view
        //        let sScrollview = UIScrollView(frame: CGRectMake(0, 0, sView.frame.size.width, sView.frame.size.height))
        //        sScrollview.contentSize = CGSizeMake(0, 300)
        //        sScrollview.pagingEnabled = true
        //        sScrollview.backgroundColor = UIColor.yellowColor()
        //        sView.addSubview(sScrollview)
        
        
        // tableview
        let sTableview = UITableView(frame: CGRectMake(0, 0, sView.frame.size.width, sView.frame.size.height), style: UITableViewStyle.Plain)
        sTableview.delegate = self
        sTableview.dataSource = self
        sView.addSubview(sTableview)
        
        // Slider
        let sSlider = UISlider(frame: CGRectMake(150, 200, 80, 20))
        sSlider.minimumValue = 0
        sSlider.maximumValue = 10
        sSlider.addTarget(self, action: "sliderValueChanges:", forControlEvents: UIControlEvents.ValueChanged)
        sSlider.backgroundColor = UIColor.orangeColor()
        sSlider.tintColor = UIColor.blackColor()
        self.view.addSubview(sSlider)
        //swicth
        let sSwitch = UISwitch(frame: CGRectMake(50, 200, 80, 30))
        sSwitch.setOn(true, animated: true)
        sSwitch.on = true
        sSwitch.addTarget(self, action: "switchValueChanges:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(sSwitch)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func ClickMeforCollectionView (sender : UIButton!) {
        let sView = UIView(frame: CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100))
        sView.backgroundColor = UIColor.magentaColor()
        sView.layer.borderColor = UIColor.blackColor().CGColor
        sView.layer.borderWidth = 3
        self.view.addSubview(sView)
        let slayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        slayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        slayout.itemSize = CGSizeMake(90, 120)
        sCollectionview = UICollectionView(frame: CGRectMake(0, 0, sView.frame.size.width, sView.frame.size.height), collectionViewLayout: slayout)
        sCollectionview.delegate = self
        sCollectionview.dataSource = self
        sCollectionview.backgroundColor = UIColor.orangeColor()
        sCollectionview.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        sView.addSubview(sCollectionview)
    }
    // MARK: Collection View Datasource methods
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell=collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) ;
        cell.backgroundColor = UIColor.greenColor();
        return cell;
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("selceted cell is :\(indexPath.row+1) ")
    }
    // MARK: Tableview Datasource methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\(indexPath.row + 1)"
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.row)")
    }
    // MARK: Switch
    func switchValueChanges (sender : UISwitch!) {
        if sender.on {
            print("switch is ON")
        } else {
            print("switch is OFF")
        }
    }
    //MARK: Slider Methods
    func sliderValueChanges(sender : UISlider!) {
        print("slider value is---> \(sender.value)")
    }
    //MARK: SegmentController
    func segmentClicked (sender : UISegmentedControl!) {
        if sender.selectedSegmentIndex == 0 {
            print("Your are in Satish View")
        }else if sender.selectedSegmentIndex == 1 {
            print("Your are in kumar View")
        }else {
            print("Your are in manam View")
        }
    }
    func ClickMe(sender : UIButton!) {
        // label
        let sLabel = UILabel()
        sLabel.frame = CGRectMake(self.view.frame.size.width/2-50, 40, 100, 30)
        sLabel.text = "Welcome"
        sLabel.textColor = UIColor.orangeColor()
        sLabel.textAlignment = NSTextAlignment.Center
        sLabel.backgroundColor = UIColor.blueColor()
        sLabel.font = UIFont(name: "Bold", size: 10)
        self.view .addSubview(sLabel)
        
        // textfield
        let sTextfield = UITextField()
        sTextfield.frame = CGRectMake(self.view.frame.size.width/2-100, 220, 200, 50)
        sTextfield.placeholder = "Enter...."
        sTextfield.delegate = self
        sTextfield.textColor = UIColor.redColor()
        sTextfield.backgroundColor = UIColor.lightGrayColor()
        sTextfield.layer.borderColor = UIColor.blackColor().CGColor
        sTextfield.layer.borderWidth = 3
        sTextfield.keyboardType = UIKeyboardType.EmailAddress
        sTextfield.textAlignment = NSTextAlignment.Center
        sTextfield.font = UIFont(name: "Bold", size: 15.0)
        self.view.addSubview(sTextfield)
        
        //textview
        let stextview = UITextView()
        stextview.frame = CGRectMake(self.view.frame.size.width/2-100, 300, 200, 100)
        stextview.backgroundColor = UIColor.lightGrayColor()
        stextview.textColor = UIColor.blueColor()
        stextview.textAlignment = NSTextAlignment.Left
        stextview.delegate = self
        stextview.layer.borderColor = UIColor.blackColor().CGColor
        stextview.layer.borderWidth = 3
        self.view.addSubview(stextview)
    }
    //MARK: Textfield Delegate Methods
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.textAlignment = NSTextAlignment.Left
        print("Begining")
    }
    func textFieldDidEndEditing(textField: UITextField) {
        print("Ending")
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return true
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

