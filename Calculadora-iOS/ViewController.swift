//
//  ViewController.swift
//  Calculadora-iOS
//
//  Created by PeterPachMu on 14/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textResult: UILabel!
    
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var contDecimal: Int = 0
    var signo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textResult.textColor = .white
        textResult.text="0"
        
    }
    
    
    //Number
    
    @IBAction func button9(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "9"
        }else{
            textResult.text = textResult.text!+"9"
        }
    }
    @IBAction func button8(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "8"
        }else{
            textResult.text = textResult.text!+"8"
        }
    }
    @IBAction func button7(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "7"
        }else{
            textResult.text = textResult.text!+"7"
        }
    }
    @IBAction func button6(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "6"
        }else{
            textResult.text = textResult.text!+"6"
        }
    }
    @IBAction func button5(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "5"
        }else{
            textResult.text = textResult.text!+"5"
        }
    }
    @IBAction func button4(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "4"
        }else{
            textResult.text = textResult.text!+"4"
        }
    }
    @IBAction func button3(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "3"
        }else{
            textResult.text = textResult.text!+"3"
        }
    }
    @IBAction func button2(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "2"
        }else{
            textResult.text = textResult.text!+"2"
        }
    }
    @IBAction func button1(_ sender: Any) {
        if textResult.text == "0"{
            textResult.text = "1"
        }else{
            textResult.text = textResult.text!+"1"
        }
    }
    @IBAction func button0(_ sender: Any) {
        if textResult.text != "0"{
            textResult.text = textResult.text!+"0"
        }
    }
    
    //--Finalizado
    @IBAction func buttonAC(_ sender: Any) {
        textResult.text = "0"
        firstNumber = 0
        secondNumber = 0
    }
    
    //--Finalizado
    @IBAction func buttonDecimal(_ sender: Any) {
        if contDecimal == 0 {
            if textResult.text == "0"{
                textResult.text = "0."
            }else{
                textResult.text = textResult.text!+"."
            }
            contDecimal = 1
        }
    }
    
    
    //Operaciones
    
    @IBAction func buttonDivision(_ sender: Any) {
        signo = "Division"
        firstNumber = Double(textResult.text!)!
        contDecimal = 0
        textResult.text = "0"
    }
    @IBAction func buttonMultiplication(_ sender: Any) {
        signo = "Multiplication"
        firstNumber = Double(textResult.text!)!
        contDecimal = 0
        textResult.text = "0"
    }
    @IBAction func buttonSubtraction(_ sender: Any) {
        signo = "Subtraction"
        firstNumber = Double(textResult.text!)!
        contDecimal = 0
        textResult.text = "0"
    }
    @IBAction func buttonAddition(_ sender: Any) {
        signo = "Addition"
        firstNumber = Double(textResult.text!)!
        contDecimal = 0
        textResult.text = "0"
    }
    
    
    @IBAction func buttonEqual(_ sender: Any) {
        secondNumber = Double(textResult.text!)!
        contDecimal = 0
        operacion(first: firstNumber, second: secondNumber)
    }
    
    //Others Operations --Finalizado
    @IBAction func buttonPercentage(_ sender: Any) {
        print("Boton correcto %")
        firstNumber = Double(textResult.text!)!
        let resultFinal = firstNumber/100
        textResult.text = String(resultFinal)
    }
    
    @IBAction func buttonPossNeg(_ sender: Any) {
        print("Boton correcto +-")
        firstNumber = Double(textResult.text!)!
        let resultFinal = firstNumber*(-1)
        textResult.text = String(resultFinal)
    }
    
  //Funciones
    
    func operacion(first: Double,second: Double){
        if signo == "Addition" {
            let solution = first + second
            textResult.text = String(solution)
        }else if signo == "Subtraction" {
            let solution = first - second
            textResult.text = String(solution)
        }else if signo == "Multiplication" {
            let solution = first * second
            textResult.text = String(solution)
        }else if signo == "Division" {
            if secondNumber != 0 {
                let solution = first / second
                textResult.text = String(solution)
            } else {
                textResult.text = "No se puede dividir"
                firstNumber = 0
                secondNumber = 0
            }
        }
    }
}
