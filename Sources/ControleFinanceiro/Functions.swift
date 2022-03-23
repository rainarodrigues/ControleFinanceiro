//
//  File.swift
//  
//
//  Created by Raina Rodrigues de Lima on 22/03/22.
//

import Foundation

func saldoInicial(){
    print("--------------------------------------------")
    print("---------  Controle Financeiro  --------- \n")
    print("--------------------------------------------")
    
    print("Digite o saldo inicial: ")
    
    let saldoInicial = verificarDouble()
    
    print("saldo inicial: \(saldoInicial)")
    
    print("\n")
}


func verificarIntMenu() -> Int {
    var teste = readLine()
    while true {
        if (Int(teste!) == nil) || (Int(teste!)! >= 6) || (Int(teste!)! <= 0) {
            print ("Valor invalido, digite de 1 a 5 pra acessar o valor de opcão: \n")
            teste = readLine()
        }else{
            break
        }
        
    }
    return Int(teste!)!
}


func verificarDouble() -> Double {
    var InputMenu = readLine()
    while true {
        if (Double(InputMenu!) == nil || (Double(InputMenu!)! <= 0 )) {
            print ("Valor invalido, digite um valor numerico possitivo: ")
            InputMenu = readLine()
        }else{
            break
        }
        
    }
    return Double(InputMenu!)!
}
























