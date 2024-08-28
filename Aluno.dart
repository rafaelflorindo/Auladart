class Aluno {
  String nome;
  int idade;
  String cgm;
  String curso;
  double mensalidade;

  Aluno(this.nome, this.idade, this.curso, this.cgm, this.mensalidade);

  void exibirInformacoes() {//view
    print('Nome: $nome');
    print('Idade: $idade');
    print('CGM: $cgm');
    print('Curso: $curso');
    print('Mensalidade do mês: \$${mensalidade.toStringAsFixed(2)}');
    print('-----------------------');
  }
}//fechamento da classe

//definições de métodos estaticos
void exibirAlunos(List<Aluno> alunos) {
  for (var aluno in alunos) {
    aluno.exibirInformacoes();
  }
}
//                             lista de alunos    //Rafael
Aluno? encontrarAlunoPorNome(List<Aluno> alunos, String nome) {
  for (var aluno in alunos) {
    if (aluno.nome == nome) {
      return aluno;
    }
  }
  return null; // Retorna null se o funcionário não for encontrado
}

double calcularMediaMensalidade(List<Aluno> alunos) {
  if (alunos.isEmpty) return 0.0;

  double somaMensalidades = 0.0;
  for (var aluno in alunos) {
    somaMensalidades += aluno.mensalidade;
    //somaMensalidades = somaMensalidades + aluno.mensalidade;
  }
  
  double mediaMensalidade = somaMensalidades / alunos.length;
  return mediaMensalidade;
  
  //return somaMensalidades / alunos.length;
}

void main() {
  var alunos = <Aluno>[
    Aluno('Ana Silva', 30, 'Recursos Humanos', '123456', 3000.00),
    Aluno('Carlos Souza', 45, 'TI', '99874', 4500.50),
    Aluno('Maria Oliveira', 28, 'Marketing', '88795', 3500.75),
    Aluno("Rafael", 42, "123456789", "ADS", 450.58),
    Aluno("Ricardo", 40, "156789", "Gastronomia", 1450.58),
    Aluno("José", 38, "156789", "ADS", 450.58),
    Aluno("Fernando", 22, "56789", "Gastronomia", 1450.58),
    Aluno("Margarete", 52, "123789", "ADS", 450.58)
  ];

  print('Lista de alunos:');
  exibirAlunos(alunos);

  double mediaMensalidade = calcularMediaMensalidade(alunos);
  print('Média das Mensalidades de todos os alunos: \$${mediaMensalidade.toStringAsFixed(2)}');
  
  String nomeParaBuscar = 'Fabiano';
  var alunoEncontrado = encontrarAlunoPorNome(alunos, nomeParaBuscar);

  if (alunoEncontrado != null) {
    print('Aluno Encontrado:');
    alunoEncontrado.exibirInformacoes();
  } else {
    print('Aluno com o nome $nomeParaBuscar não foi encontrado.');
  }
}