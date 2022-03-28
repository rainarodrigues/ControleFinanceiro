//
//  File.swift
//
//
//  Created by Raina Rodrigues de Lima on 22/03/22.
//

import Foundation

class Sistema {
    
    func telaPrint(){
        print("\n \n \n \n \n \n \n \n \n \n \n \n")
        print("\n--------------------------------------------")
        print("------------  Controle Financeiro  ----------")
        print("----------------------------------------------")
    }
    
    func menssageMenu(){
        print("\n")
        print("------------------------------")
        print("------ Menu Principal --------")
        print("------------------------------")
        print("\n1 - Saldo inicial\n2 - Receitas\n3 - Despesas\n4 - Metas\n5 - Saldos\n")
        print("Digite o numero para acessar o menu: ")
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
    
    // Saldo Inicial
    var saldo = 0.0
    
    func saldoInicial() {
        telaPrint()
        while(true){
            print("Digite o saldo inicial: ")
        
            let saldoInicial = verificarDouble()
        
            print("saldo inicial: \(saldoInicial)")
        
            
            saldo = saldoInicial
            
            print("\n")
        }

    }
    
    func imprimirSaldo() {
        print("O saldo é: \(saldo)")
    }

    //Receitas
    var nomeReceita: [String] = []
    var saldoReceitas: [Double] = []
    var resposta : String?
    var count = 0

    func receitas(){
        
        while(true){
            print("\n \n \n \n \n \n \n \n \n \n \n \n")
            print("\n \n \n \n \n \n \n \n \n \n \n \n")
            print(" ----------------------------------- \nVocê quer adicionar uma receita? \n Digite 1 para SIM e 2 para Não ")
            let inputResposta = readLine()
            resposta = String(inputResposta!)
            
            if(resposta != "1" && resposta != "2"){
                print("\n \n \n \n \n \n \n \n \n \n \n \n")
                print("\n \n \n \n \n \n \n \n \n \n \n \n")
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
            }
            
        }
        
    }
    
    func imprimirReceitas(){
        print("--------------------------------")
        print("----- Total de Receitas : ------")
        print("--------------------------------")
        for 
        print(" \(nomeReceita) : \(saldoReceitas)")
        
    }
    
    //Despesas
    var nomeDespesas: [String] = []
    var saldoDespesas: [Double] = []
    var respostaDespesas : String?
    var countDespesas = 0

    func despesas(){

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
}


























