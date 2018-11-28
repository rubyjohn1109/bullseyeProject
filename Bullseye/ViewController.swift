//
//  ViewController.swift
//  Bullseye
//
//  Created by Ruby Johnson on 9/27/18.
//  Copyright © 2018 RJ Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    var targetValue: Int = 0
    var difference: Int = 0
    
    
    
    

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        targetValue = Int.random(in: 1...100)
        startNewRound()
    }
//The IBAction attribute indicates that the method is an action that you can connect to from your storyboard in Interface Builder.
    @IBAction func showAlert(){
        
        difference = abs(targetValue - currentValue)
        
        let points = 100 - difference
        
        
        
        
        
        
        
        let message: String = " You scored \(points)"
        let alert = UIAlertController(title: "Hello World!" , message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //This tells the alert to add action
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
}
    @IBAction func sliderMoved(_slider: UISlider){
       
        let roundedValue = _slider.value.rounded()
        
        currentValue = Int(roundedValue)
        
        
    }
    
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        var currentValue: Int = 50
        slider.value = Float(currentValue)
        showValueOutlet()
        
    }
    
    
    @IBOutlet weak var valueOutlet: UILabel!
    
     func showValueOutlet(){
        valueOutlet.text = String(targetValue)
        
        
    }
}
