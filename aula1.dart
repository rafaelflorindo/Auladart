void main() {
  print("Ola");

  int idade = 15;
  double valor = 587.80;
  String nome = "Rafael";
  bool status = true; // |false

  print ("$status");
	
  print("Nome: $nome \nIdade: $idade \nValor: $valor");

  var codigo = 15;
  var preco = 587.80;
  String produto = "Monitor LED";

  print("\n\nCódigo: $codigo \nProduto: $produto \nValor: $preco");

  /*Salario*/
  
  double valorHora = 35.85;
  int quantidadeHora = 40;
  
  double salario;
  
  salario = valorHora * quantidadeHora;
  print ("Salario: R\$ $salario");
  int descontoInss = 9;
  double valorDesconto = (salario * descontoInss) / 100;
  //double valorDesconto = salario * (descontoInss / 100);
  print ("Valor Desconto $valorDesconto");
  
  //double salarioLiquido = salario - valorDesconto;
  double salarioLiquido = salario - (salario * (descontoInss / 100));
  
  if(salarioLiquido <= 2000){
	    double bonificacao = 500.00;
      double salarioBonificacao = salarioLiquido + bonificacao;
	    print ("Salário com Bonificação R\$ $salarioBonificacao");
  }else{
    print("Salário Liquido $salarioLiquido");
  }
}
