

let sistema = Sistema()


while(true){
    sistema.menssageMenu()
    var optionMenu = sistema.verificarIntMenu()
    switch optionMenu {
        case 1:
            sistema.saldoInicial()
        case 2:
            print("---------------------------------------------")
            print("------------  Controle Financeiro   ---------")
            print("---------------------------------------------")
            print("---------------------------------------------")
            print(" ▶︎ Receitas ")
            print("---------------------------------------------")
            sistema.receitas()
        case 3:
            print("---------------------------------------------")
            print("------------  Controle Financeiro   ---------")
            print("---------------------------------------------")
            print("---------------------------------------------")
            print(" ▶︎ Despesas ")
            print("---------------------------------------------")
            sistema.despesas()
        case 4:
            print("---------------------------------------------")
            print("------------  Controle Financeiro   ---------")
            print("---------------------------------------------")
            print("---------------------------------------------")
            print(" ▶︎ Metas ")
            print("---------------------------------------------")
            sistema.metasAtrituida()
        case 5:
            print("---------------------------------------------")
            print("------------  Controle Financeiro   ---------")
            print("---------------------------------------------")
            print("---------------------------------------------")
            print(" ▶︎ Saldo Total ")
            print("---------------------------------------------")
            sistema.imprimirSaldoInicial()
            sistema.imprimirReceitas()
            sistema.ImprimirDespesas()
            print("\n ◆ Total da Receitas : \(sistema.saldoTotalReceitas())")
            print("\n ◆ Total de Despesas : \(sistema.saldoTotalDespesas())")
            print("\n ◆ Saldo Final : \(sistema.imprimirSaldoFinal())")
            sistema.imprimirMeta()
        case 6:
            sistema.finalizarSistema()
        default:
            print("Programa encerrado!!")
            break
    }
}

