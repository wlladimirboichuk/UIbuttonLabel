//
//  ViewController.swift
//  UiButton
//
//  Created by Volodymyr Boichuk on 09.05.2020.
//  Copyright © 2020 Volodymyr Boichuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Скрываем лейбл с помощью кода.
        label.isHidden = true
        //Размер шрифта.
        label.font = label.font.withSize(35)
        //Цвет шрифта.
        label.textColor = UIColor.red
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        //Для аутлета и кнопки.
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "hi,world"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hi!"
            label.textColor = .blue
        } else if sender.tag == 2 {
            button.isHidden = true 
        }
//        if label.isHidden {
//        label.isHidden = false
//        label.text = "Hello!"
//            button.setTitle("clear", for: UIControl.State.normal)
//            button.setTitleColor(.white, for: .normal)
//            button.backgroundColor = .red
//        } else {
//        label.isHidden = true
//        button.setTitle("Get result", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.backgroundColor = .green
    
    
    }
    
}
