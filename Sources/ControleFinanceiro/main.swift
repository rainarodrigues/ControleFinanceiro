
func menssageMenu(){
    print("Menu Principal:\n1 - Saldo inicial\n2 - Receitas\n3 - Despesas\n4 - Saldos\n5 - Metas\n")
    print("Digite uma opção:")
}

menssageMenu()

let optionMenu : Int = Int(readLine()!)!

switch optionMenu {
    case 0:
        print("Saldo Inicial")
    case 1:
        print("Receitas")
    case 2:
        print("Despesas")
    case 3:
        print("Saldos")
    case 4:
        print("Meta")
    default:
        print("Sair")
}

