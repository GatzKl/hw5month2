//
//  ViewController.swift
//  hw5month2
//
//  Created by Александр Калашников on 23/6/22.
//

import UIKit

class ViewController: UIViewController {

    var colors: [CGColor] = [CGColor(red: 255, green: 0, blue: 0, alpha: 255), CGColor(red: 255, green: 165, blue: 0, alpha: 255), CGColor(red: 0, green: 255, blue: 0, alpha: 255)]
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBAction func colorButton(_ sender: Any) {
        let randNum = Int.random(in: 0...2)
        switch randNum {
        case 0:
            redLight.backgroundColor = .red
            orangeLight.backgroundColor = .white
            greenLight.backgroundColor = .white
            colorLabel.text = "Red"
            colorLabel.textColor = .red
            colorLabel.layer.borderColor = colors[0]
        case 1:
            orangeLight.backgroundColor = .yellow
            redLight.backgroundColor = .white
            greenLight.backgroundColor = .white
            colorLabel.text = "Yellow"
            colorLabel.textColor = .yellow
            colorLabel.layer.borderColor = colors[1]
        case 2:
            greenLight.backgroundColor = .green
            redLight.backgroundColor = .white
            orangeLight.backgroundColor = .white
            colorLabel.text = "Green"
            colorLabel.textColor = .green
            colorLabel.layer.borderColor = colors[2]
        default:
            colorLabel.text = ":3"
        }
    }
    @IBAction func beautifulButton(_ sender: Any) {
        redLight.layer.borderWidth = 3
        orangeLight.layer.borderWidth = 3
        greenLight.layer.borderWidth = 3
        redLight.layer.cornerRadius = 60
        orangeLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        colorLabel.layer.borderWidth = 3
        redLight.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 255)
        orangeLight.layer.borderColor = CGColor(red: 255, green: 165, blue: 0, alpha: 255)
        greenLight.layer.borderColor = CGColor(red: 0, green: 255, blue: 0, alpha: 255)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
