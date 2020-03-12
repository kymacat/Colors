//
//  ViewController.swift
//  touches
//
//  Created by Const. on 13.02.2020.
//  Copyright © 2020 Oleginc. All rights reserved.
//

import UIKit

/**
       Основной и единственный View приложения

       - Содержит в себе три слайдера, каждый из которых отвечает за компоненту цвета (RGB) и меняет фон в зависимости от состояния слайдеров
       - Так же три лейбла, которые отображают значения каждой из компонент
   */
class ViewController: UIViewController {

    /// Слайдер красной компоненты
    @IBOutlet weak var redSlider: UISlider!
    /// Слайдер зеленой компоненты
    @IBOutlet weak var greenSlider: UISlider!
    /// Слайдер голубой компоненты
    @IBOutlet weak var blueSlider: UISlider!
    
    /// Лейбл красной компоненты
    @IBOutlet weak var redComponent: UILabel!
    /// Лейбл зеленой компоненты
    @IBOutlet weak var greenComponent: UILabel!
    /// Лейбл голубой компоненты
    @IBOutlet weak var blueComponent: UILabel!
    
    
    // MARK: - hsabfahsbfa
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        redSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 255
        
        redSlider.value = 255
        greenSlider.value = 255
        blueSlider.value = 255
        
    }
    /**
     В зависимости от состояния слайдера выставляет красную компоненту и меняет фон
     - parameters:
         - sender: Слайдер, с которым взаимодействует пользователь
     - returns: nothing
    */
    @IBAction func changeRed(_ sender: UISlider) {
        self.view.backgroundColor = RGBColor.getColor(redSlider.value, greenSlider.value, blueSlider.value)
        redComponent.text = String(Int(sender.value))
    }

    /**
     В зависимости от состояния слайдера выставляет зеленую компоненту и меняет фон
     - parameters:
         - sender: Слайдер, с которым взаимодействует пользователь
     - returns: nothing
    */
    @IBAction func changeGreen(_ sender: UISlider) {
        self.view.backgroundColor = RGBColor.getColor(redSlider.value, greenSlider.value, blueSlider.value)
        greenComponent.text = String(Int(sender.value))
    }
    
    /**
     В зависимости от состояния слайдера выставляет синюю компоненту и меняет фон
     - parameters:
         - sender: Слайдер, с которым взаимодействует пользователь
     - returns: nothing
    */
    @IBAction func changeBlue(_ sender: UISlider) {
        self.view.backgroundColor = RGBColor.getColor(redSlider.value, greenSlider.value, blueSlider.value)
        blueComponent.text = String(Int(sender.value))
    }
    
    
    
}

// MARK: - RGBColor

class RGBColor {
    
    static func getColor(_ redValue: Float, _ greenValue: Float, _ blueValue: Float) -> UIColor {
        return UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1)
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

