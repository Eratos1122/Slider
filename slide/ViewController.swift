//
//  ViewController.swift
//  slide
//
//  Created by Admin on 02/08/2017.
//  Copyright © 2017 Pavel. All rights reserved.
//

import UIKit
import TGPControls

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var lb_time: UILabel!
    @IBOutlet weak var tgp_slider: TGPDiscreteSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tgp_slider.addTarget(self, action: #selector(valueChanged(_:event:)), for: .valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Action
    func valueChanged(_ sender: TGPDiscreteSlider, event:UIEvent) {
        var text: String = ""
        text.append(String(Int(sender.value) / 2))
        text.append("h")
        if(Int(sender.value) % 2 == 1) {
            text.append(":30m")
        }
        lb_time.text = text
    }

}

class Colors {
    var gl:CAGradientLayer!
    
    init() {
        let colorTop = UIColor(red: 192.0 / 255.0, green: 38.0 / 255.0, blue: 42.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 35.0 / 255.0, green: 2.0 / 255.0, blue: 2.0 / 255.0, alpha: 1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
