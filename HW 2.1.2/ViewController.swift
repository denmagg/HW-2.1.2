//
//  ViewController.swift
//  HW 2.1.2
//
//  Created by Denis Medvedev on 26/06/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //    MARK: @IBOutlets

    @IBOutlet var button: UIButton!
    
    @IBOutlet var trafficLights: [UIView]!
    
    
    enum CurrentLight {
        case red
        case yellow
        case green
    }
    var currentLight: CurrentLight = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for trafficLight in trafficLights {
            trafficLight.layer.cornerRadius = trafficLight.frame.size.height / 2
        }
    }
    
    @IBAction func buttonAction(){
        button.setTitle("NEXT", for: .normal)
        trafficLights[0].alpha = 0.3
        trafficLights[1].alpha = 0.3
        trafficLights[2].alpha = 0.3
        switch currentLight {
        case .green:
            trafficLights[0].alpha = 1
            trafficLights[2].alpha = 0.3
            currentLight = .red
        case .red:
            trafficLights[0].alpha = 0.3
            trafficLights[1].alpha = 1
            currentLight = .yellow
        case .yellow:
            trafficLights[1].alpha = 0.3
            trafficLights[2].alpha = 1
            currentLight = .green
        }
    }
}

