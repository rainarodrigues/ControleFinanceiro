
func menssageMenu(){
    print("------------------------------")
    print("-------Menu Principal ---------")
    print("------------------------------")
    print("\n1 - Saldo inicial\n2 - Receitas\n3 - Despesas\n4 - Saldos\n5 - Metas\n")
    print("Digite o numero para acessar o menu: ")
}



while(true){
    menssageMenu()
    var optionMenu = verificarIntMenu()
    switch optionMenu {
        case 1:
            saldoInicial()
        case 2:
            receitas()
        case 3:
            print("Despesas")
        case 4:
            print("Saldos")
        case 5:
            print("Meta")
        default:
            print("Sair")
            break
    }
}
