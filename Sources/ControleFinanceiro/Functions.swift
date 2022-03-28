//
//  File.swift
//
//
//  Created by Raina Rodrigues de Lima on 22/03/22.
//

import Foundation

func telaPrint(){
    print("\n--------------------------------------------")
    print("------------  Controle Financeiro  ----------")
    print("----------------------------------------------")
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


func saldoInicial(){
    telaPrint()
    
    while(true){
        print("Digite o saldo inicial: ")
    
        let saldoInicial = verificarDouble()
    
        print("saldo inicial: \(saldoInicial)")
    
        print("\n")
    }
    return

}

func receitas(){
    var nomeReceita: [String] = []
    var saldoReceitas: [Double] = []
    var resposta : String?
    var count = 0

    while(true){
        print(" ----------------------------------- \nVocê quer adicionar uma receita? \n Digite 1 para SIM e 2 para Não ")
        let inputResposta = readLine()
        resposta = String(inputResposta!)
        
        
        if(resposta != "1" && resposta != "2"){
            print("----------------------------------- \nVocê não digitou 1 nem 2.")
        
        }else if (resposta == "2"){
            break
        }else{
            telaPrint()

            print("Digite o nome da receita: ")
            var nomeInputReceita = readLine()
            nomeReceita.append(nomeInputReceita!)
            
            print("Digite o valor da receita: ")
            var saldoInputReceita = verificarDouble()
            saldoReceitas.append(saldoInputReceita)
            
            //count += 1
            print("\n")
            print(nomeReceita)
            print(saldoReceitas)
        }
        
    }
    
}

func despesas(){
    var nomeDespesas: [String] = []
    var saldoDespesas: [Double] = []
    var respostaDespesas : String?
    var countDespesas = 0

    while(true){
        print("\n-----------------------------------")
        print("Você quer adicionar uma despesa?")
        print("Digite 1 para SIM e 2 para NÃO : ")
        print("-----------------------------------")
        let inputResposta = readLine()
        respostaDespesas = String(inputResposta!)
        
        
        if(respostaDespesas != "1" && respostaDespesas != "2"){
            print("----------------------------------- \nVocê não digitou 1 nem 2.")
        
        }else if (respostaDespesas == "2"){
            break
        }else{
            telaPrint()

            print("Digite o nome da despesa: ")
            var nomeInputDespesas = readLine()
            nomeDespesas.append(nomeInputDespesas!)
            
            print("Digite o valor da despesa: ")
            var saldoInputDespesas = verificarDouble()
            saldoDespesas.append(saldoInputDespesas)
            
            //countDespesas += 1
            print("\n")
            
            print(nomeDespesas)
            print(saldoDespesas)
        }
        
    }
    
}




















