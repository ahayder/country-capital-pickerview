//
//  ViewController.swift
//  Country&Capital
//
//  Created by N. M. Ali Hayder on 5/14/16.
//  Copyright © 2016 N. M. Ali Hayder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet var image1: UIImageView!
    
    @IBOutlet var image2: UIImageView!
    
    
    @IBOutlet var label1: UILabel!
    
    
    @IBOutlet var label2: UILabel!
    
    
    @IBOutlet var message: UILabel!
    
    
    var data = [["USA","Italy", "China", "England"], ["Beijing", "London", "Rome", "Washington, DC"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return data.count
        
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        return data[component][row]
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let item1 = data[0][pickerView.selectedRowInComponent(0)]
        let item2 = data[1][pickerView.selectedRowInComponent(1)]
        
        let usa = UIImage(named:"usa.png")
        let italy = UIImage(named: "italy.png")
        let china = UIImage(named: "china.png")
        let england = UIImage(named: "england.png")
        
        let washington = UIImage(named:"washington.jpg")
        let rome = UIImage(named: "rome.jpg")
        let beijing = UIImage(named: "beijing.jpg")
        let london = UIImage(named: "london.jpg")
        
        let correctMess = "The Capital of \(item1) is \(item2)"
        let mess = "Match the Flags to the Capitals."
        
        
        switch(item1){
            
        case "USA":
            image1.image = usa
            label1.text = "USA"
            
        case "Italy":
            image1.image = italy
            label1.text = "Italy"
            
        case "China":
            image1.image = china
            label1.text = "China"
            
        case "England":
            image1.image = england
            label1.text = "England"
            
        default:
            image1.image = usa
            label1.text = "USA"
            
            
            
        }//end of switch 1
        
        
        switch(item2){
            
        case "Beijing":
            image2.image = beijing
            label2.text = "Beijing"
            
            
            if (label1.text == "China"){
                message.text = correctMess
                
            }
            else {
                message.text = mess
                
            }
            
            
        case "London":
            image2.image = london
            label2.text = "London"
            
            if (label1.text == "England"){
                message.text = correctMess
                
            }
            else {
                message.text = mess
                
            }
            
        case "Rome":
            image2.image = rome
            label2.text = "Rome"
            
            if (label1.text == "Italy"){
                message.text = correctMess
            }
            else {
                message.text = mess
                
            }
            
            
        case "Washington, DC":
            image2.image = washington
            label2.text = "Washington, DC"
            
            if (label1 == "USA") {
                label1.text = correctMess
                
            }
            else {
                label1.text = mess
            }
            
        default:
            image2.image = washington
            label2.text = "Washington, DC"
            
            
        }// end of switch2
        
        
    }// end of did select row


}

