class Circulo{
  double _raio = 0; //atributo private
  final double pi = 3.14;
  
  Circulo(double value){ //método construtor 
    raio = value;
  }
  
  void set raio(double value){ //setters
    if(value > 0) {
      _raio = value;
    }
  }
  
  double get raio => _raio; //getters
  
  double area(){
    double valorRaio= (raio * raio * pi);
    return valorRaio;
  }
}
main(){
  Circulo circ = Circulo(12);
  print("Calculo da área da circunferência de raio ${circ.raio}");
  print("Área = ${circ.area()}");
}