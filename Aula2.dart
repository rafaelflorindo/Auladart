void main() {

int opcao = 2;
  
  switch (opcao){
      case 1: print("Cadastrar Cliente");
      case 2: print("Listar todos os Clientes");
      case 3: print("Listar Um Cliente");
    default: print("Opção Inválida! Tente novamente.");
  }

  opcao = 2;
  
  if(opcao==1)
    print("Cadastrar");
  else if(opcao==2)
    print("Listar Todos");
  else if(opcao==3)
    print("Listar Um");
  else
    print("Opção Inválida! Tente novamente.");
}



