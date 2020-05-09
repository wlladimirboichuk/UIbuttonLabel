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
    

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Скрываем лейбл с помощью кода.
        label.isHidden = true
        //Размер шрифта.
        label.font = label.font.withSize(35)
        //Цвет шрифта.
        label.textColor = UIColor.red
        
        //Для аутлета и кнопки.
        button.setTitle("Get result", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .green
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false 
        label.text = "Hello!"
    }
    
    
    }
    
    

