

let sistema = Sistema()


while(true){
    sistema.menssageMenu()
    var optionMenu = sistema.verificarIntMenu()
    switch optionMenu {
        case 1:
            sistema.saldoInicial()
        case 2:
            sistema.receitas()
        case 3:
            sistema.despesas()
        case 4:
            sistema.metasAtrituida()
        case 5:
            sistema.saldoPrint()
//            sistema.imprimirMeta()
//            sistema.telaPrint()
//            sistema.imprimirReceitas()
//            sistema.imprimirSaldo()
            sistema.imprimirSaldoFinal()
                case 6:
            sistema.finalizarSistema()
        default:
            print("Programa encerrado!!")
            break
    }
}

