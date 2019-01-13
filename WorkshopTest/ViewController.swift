//
//  ViewController.swift
//  WorkshopTest
//
//  Created by Noe Osorio on 12/01/19.
//  Copyright © 2019 Noe Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var preguntaTF: UITextField!
    
    @IBOutlet var AP: UIButton!
    @IBOutlet var BP: UIButton!
    @IBOutlet var DP: UIButton!
    @IBOutlet var CP: UIButton!
    
    var trivia : [Pregunta] =
        [Pregunta("¿Quien es el padre de Luck Skywalker?", "A", ["A":"Darth Vader", "B":"Obiwan Kenovi", "C":"Chabelo", "D":"Han Solo"]),
         Pregunta("¿Que edad tiene Chabelo?", "D", ["A": "50 Años", "B": "100 años", "C": "2019 años", "D": "Math Type Error"])
        ]
    var num = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        num = Int.random(in: 0 ..< trivia.count)
        print(num)
        
        preguntaTF.text = trivia[num].pregunta
        AP.setTitle(trivia[num].respuestas["A"], for: .normal)
        BP.setTitle(trivia[num].respuestas["B"], for: .normal)
        CP.setTitle(trivia[num].respuestas["C"], for: .normal)
        DP.setTitle(trivia[num].respuestas["D"], for: .normal)
    }

    @IBAction func A(_ sender: Any) {
        trivia[num].correcta.elementsEqual("A") ? print("Correcto") : print("Incorrecto")
    }
    @IBAction func B(_ sender: Any) {
        trivia[num].correcta.elementsEqual("B") ? print("Correcto") : print("Incorrecto")
    }
    @IBAction func C(_ sender: Any) {
        trivia[num].correcta.elementsEqual("C") ? print("Correcto") : print("Incorrecto")
    }
    @IBAction func D(_ sender: Any) {
        trivia[num].correcta.elementsEqual("D") ? print("Correcto") : print("Incorrecto")
    }
    
}

class Pregunta{
    let pregunta:String
    let correcta:String
    let respuestas: [String:String]
    
    init(_ pregunta:String, _ respuesta:String, _ respuestas:[String:String]) {
        self.pregunta = pregunta
        self.correcta = respuesta
        self.respuestas = respuestas
    }
    
    
}

