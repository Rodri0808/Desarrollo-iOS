//
//  ViewController.swift
//  FondoColores
//
//  Created by Alumno on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var R: UILabel!
    @IBOutlet weak var G: UILabel!
    @IBOutlet weak var B: UILabel!
    @IBOutlet weak var A: UILabel!
    @IBOutlet weak var RS: UISlider!
    @IBOutlet weak var BS: UISlider!
    @IBOutlet weak var GS: UISlider!
    @IBOutlet weak var AS: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        update()
    }

    @IBAction func ActionR(_ sender: UISlider) {
        update()
    }
    
    @IBAction func ActionG(_ sender: UISlider) {
        update()
    }
    
    @IBAction func ActionB(_ sender: UISlider) {
        update()
    }
    
    @IBAction func ActionA(_ sender: UISlider) {
        update()
    }
    
    func update(){
        let RValue = CGFloat(RS.value)
        let GValue = CGFloat(GS.value)
        let BValue = CGFloat(BS.value)
        let AValue = CGFloat(AS.value)
        
        let color = UIColor(red:RValue, green: GValue, blue: BValue, alpha: AValue)
        
        imagen.backgroundColor = color
    
        R.text = String(RS.value)
        G.text = String(GS.value)
        B.text = String(BS.value)
        A.text = String(AS.value)
        
        //R.text = String(format: "%.2f", RS.value)
        //G.text = String(format: "%.2f", GS.value)
        //B.text = String(format: "%.2f", BS.value)
        //A.text = String(format: "%.2f", AS.value)

    }
}

