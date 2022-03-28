

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
            print("Metas")
        case 5:
            sistema.imprimirReceitas()
        default:
            print("Sair")
            break
    }
}

