//
//  File.swift
//
//
//  Created by Raina Rodrigues de Lima on 22/03/22.
//

import Foundation

class Sistema {
    
    func menssageMenu(){
        print("---------------------------------------------")
        print("------------  Controle Financeiro   ---------")
        print("---------------------------------------------")
        print(" ▶︎ Menu Principal")
        print("---------------------------------------------")
        print("\n▶️ 1 - Saldo inicial\n▶️ 2 - Receitas\n▶️ 3 - Despesas\n▶️ 4 - Metas\n▶️ 5 - Saldos\n▶️ 6 - Finalizar Sistema")
        print("---------------------------------------------")
        print("‼️ Digite o número para acessar o menu: ")
    }

    func verificarIntMenu() -> Int {
        var teste = readLine()
        while true {
            if (Int(teste!) == nil) || (Int(teste!)! >= 7) || (Int(teste!)! <= 0) {
                print ("Valor invalido, digite de 1 a 6 pra acessar o valor de opcão: \n")
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
        print("Digite o saldo inicial: ")
        let saldoInicial = verificarDouble()
        
        saldo = saldoInicial
        print("\nsaldo inicial inserido foi: \(saldoInicial)")
    }
    
    func imprimirSaldoInicial() {
        print("\n ◆ Saldo inicial :\(saldo)")
    }

    //Receitas
    var nomeReceita: [String] = []
    var saldoReceitas: [Double] = []
    var resposta : String?
    var count = 0

    func receitas(){
        
        while(true){
            print("\n-----------------------------------")
            print("Você quer adicionar uma receita❔")
            print("‼️ Digite 1️⃣ para SIM e 2️⃣ para NÃO : ")
            print("-----------------------------------")
            let inputResposta = readLine()
            resposta = String(inputResposta!)
            
            if(resposta != "1" && resposta != "2"){
                print("\n-----------------------------------\n")
                print("‼️ Você não digitou 1 nem 2. ‼️")
            
            }else if (resposta == "2"){
                break
            }else{
                print("\nDigite o nome da receita: ")
                var nomeInputReceita = readLine()
                nomeReceita.append(nomeInputReceita!)
                
                print("\nDigite o valor da receita: ")
                var saldoInputReceita = verificarDouble()
                saldoReceitas.append(saldoInputReceita)
                //count += 1
                print("\n")
            }
            
        }
        
    }
    var auxReceitas = 0
    var totalReceitas = 0.0
    func saldoTotalReceitas() -> Double{
        while auxReceitas != saldoReceitas.endIndex{
            totalReceitas = totalReceitas + saldoReceitas[auxReceitas]
            auxReceitas += 1
        }
        return totalReceitas
        
    }
    
    func imprimirReceitas(){
        print("\n ◆ Receitas :")
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
            print("\n-----------------------------------")
            print("Você quer adicionar uma despesa❔")
            print("‼️ Digite 1️⃣ para SIM e 2️⃣ para NÃO : ")
            print("-----------------------------------")
            let inputResposta = readLine()
            respostaDespesas = String(inputResposta!)
            
            
            if(respostaDespesas != "1" && respostaDespesas != "2"){
                print("\n\n----------------------------------- \nVocê não digitou 1 nem 2.")
            
            }else if (respostaDespesas == "2"){
                break
            }else{
                print("\nDigite o nome da despesa: ")
                var nomeInputDespesas = readLine()
                nomeDespesas.append(nomeInputDespesas!)
                
                print("\nDigite o valor da despesa: ")
                var saldoInputDespesas = verificarDouble()
                saldoDespesas.append(saldoInputDespesas)
                
                //countDespesas += 1
                print("\n")
                
            }
            
        }
        
    }
    var auxDespesas = 0
    var totalDespesas = 0.0
    func saldoTotalDespesas() -> Double {
        while auxDespesas != saldoDespesas.endIndex{
            totalDespesas = totalDespesas + saldoDespesas[auxDespesas]
            auxDespesas += 1
        }
        return totalDespesas
    }
    
    func ImprimirDespesas(){
        print("\n ◆ Despesas :")
        for (nomeDespesas, saldoDespesas) in zip(nomeDespesas, saldoDespesas) {
            print("\(nomeDespesas) : \(saldoDespesas)")
        }
    }
    
    var meta = 0.0
    func metasAtrituida(){
        print("Digite o valor da sua meta: ")
        let inputMeta = verificarDouble()
        
        meta = inputMeta
        print("Meta inserida foi: \(meta)")
        print("\n")
    }
    
    func imprimirMeta(){
        if(meta >= calculoSaldoFinal){
            print("\nParabéns você atingiu a meta 😀")
        }else{
            print("\nInfelizmente a meta não foi alcançada 😢")
        }
    }
    
    func finalizarSistema(){
        print("\nSistema Finalizado!\n")
        exit(0)
    }
    
    var calculoSaldoFinal = 0.0
    func imprimirSaldoFinal() -> Double {
        let saldoReceitas = saldoTotalReceitas()
        let saldoDespesas = saldoTotalDespesas()
        
        calculoSaldoFinal = saldoReceitas - saldoDespesas
        
        return calculoSaldoFinal
    }
    
}


























