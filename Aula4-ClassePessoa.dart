class Pessoa{
  String? nome;
  int idade = 0;
  
  bool validarIdade(int value){
    if(idade >= 18)
      return true;
    else 
      return false;
  }
}

void main() {
  
  Pessoa pes = new Pessoa();
  
  pes.nome = "Rafael";
  pes.idade = 19;
  
  //bool validade = pes.validarIdade(pes.idade);
  
  print("Nome: ${pes.nome}");
  print("Idade: ${pes.idade}");
  //if(validade)
  if(pes.validarIdade(pes.idade))
    print("Autorizada a dar entrada no processo de Habilitação");
  else
    print("Você ainda não tem idade suficiente para dar entrada no processo de Habilitação");
}