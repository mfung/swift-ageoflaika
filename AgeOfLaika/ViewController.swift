//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Meng Fung on 9/23/14.
//  Copyright (c) 2014 Meng Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var humanYearsTextField: UITextField!
  @IBOutlet weak var dogYearsLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func convertToDogYearsButtonPress(sender: UIButton) {
    let intHumanYears = humanYearsTextField.text.toInt()!
    let conversionDogYears = 7
    
    let convertedYears = intHumanYears * conversionDogYears
    dogYearsLabel.hidden = false
    dogYearsLabel.text = "\(convertedYears) in Dog Years"
  }
  
  @IBAction func convertToRealDogYearsButtonPress(sender: UIButton) {
    let intHumanYears = humanYearsTextField.text.toInt()!
    let conversionFirstDogYears = 10.5
    let conversionLaterDogYears = 4
    var firstYears = 0
    var laterYears = 0
    
    if intHumanYears > 2 {
      firstYears = 2
      laterYears = intHumanYears - 2
    }
    else {
      firstYears = intHumanYears
    }
    
    let convertedYears = (Double(firstYears) * conversionFirstDogYears) +
                          Double(laterYears * conversionLaterDogYears)
    dogYearsLabel.hidden = false
    dogYearsLabel.text = "\(convertedYears) in Real Dog Years"
  }

}

