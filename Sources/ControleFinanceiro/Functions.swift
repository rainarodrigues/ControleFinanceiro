//
//  File.swift
//
//
//  Created by Raina Rodrigues de Lima on 22/03/22.
//

import Foundation

class Sistema {
    
    func telaPrint(){
        print("\n \n--------------------------------------------")
        print("------------  Controle Financeiro  ----------")
        print("----------------------------------------------")
    }
    
    func menssageMenu(){

        print("\n \n------------------------------")
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
        print("Digite o saldo inicial: ")
        let saldoInicial = verificarDouble()
        
        saldo = saldoInicial
        print("saldo inicial inserido foi: \(saldoInicial)")
        print("\n")
    }
    
    func imprimirSaldo() {
        print("\n----------------------------")
        print("----- Saldo Inicial : ------")
        print(saldo)
    }

    //Receitas
    var nomeReceita: [String] = []
    var saldoReceitas: [Double] = []
    var resposta : String?
    var count = 0

    func receitas(){
        
        while(true){
            print("\n\n-----------------------------------")
            print("Você quer adicionar uma despesa?")
            print("Digite 1 para SIM e 2 para NÃO : ")
            print("-----------------------------------")
            let inputResposta = readLine()
            resposta = String(inputResposta!)
            
            if(resposta != "1" && resposta != "2"){
                print("----------------------------------- \nVocê não digitou 1 nem 2.")
            
            }else if (resposta == "2"){
                break
            }else{
                telaPrint()
                print("\n\n-----------------------------------")
                print("Digite o nome da receita: ")
                var nomeInputReceita = readLine()
                nomeReceita.append(nomeInputReceita!)
                
                print("\n\n-----------------------------------")
                print("Digite o valor da receita: ")
                var saldoInputReceita = verificarDouble()
                saldoReceitas.append(saldoInputReceita)
                
                //count += 1
                print("\n")
            }
            
        }
        
    }
    
    func calculoReceitas(){
        var aux = 0
        var totalReceitas = 0.0
        while aux != saldoReceitas.endIndex{
            totalReceitas = totalReceitas + saldoReceitas[aux]
            aux += 1
        }
        print("\nTotal de Receitas: \(totalReceitas)")
        
    }
    
    func imprimirReceitas(){
        print("\n----------------------------")
        print("----- Receitas : ------")
        for (nomeReceita, saldoReceitas) in zip(nomeReceita, saldoReceitas) {
            print("\(nomeReceita) : \(saldoReceitas)")
        }
    }
    
    //Despesas
    var nomeDespesas: [String] = []
    var saldoDespesas: [Double] = []
    var respostaDespesas : String?
    var countDespesas = 0

    func despesas(){

        while(true){
            print("\n\n-----------------------------------")
            print("Você quer adicionar uma despesa?")
            print("Digite 1 para SIM e 2 para NÃO : ")
            print("-----------------------------------")
            let inputResposta = readLine()
            respostaDespesas = String(inputResposta!)
            
            
            if(respostaDespesas != "1" && respostaDespesas != "2"){
                print("\n\n----------------------------------- \nVocê não digitou 1 nem 2.")
            
            }else if (respostaDespesas == "2"){
                break
            }else{
                telaPrint()
                print("\n\n-----------------------------------")
                print("Digite o nome da despesa: ")
                var nomeInputDespesas = readLine()
                nomeDespesas.append(nomeInputDespesas!)
                
                print("\n\n-----------------------------------")
                print("Digite o valor da despesa: ")
                var saldoInputDespesas = verificarDouble()
                saldoDespesas.append(saldoInputDespesas)
                
                //countDespesas += 1
                print("\n")
            }
            
        }
        
    }
    
    func calculoDespesas(){
        var aux = 0
        var totalDespesas = 0.0
        while aux != saldoDespesas.endIndex{
            totalDespesas = totalDespesas + saldoDespesas[aux]
            aux += 1
        }
        print("\nTotal de Despesas: \(totalDespesas)")
        
    }
}


























