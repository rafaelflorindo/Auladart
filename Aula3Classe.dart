class Conversao{
  
  double grauCelsio = 0;
  double? grauFahrenheit, grauReaumur, grauRankine, grauKelvin; 
  
  double converterGrauFahrenheit(){
    return this.grauFahrenheit = this.grauCelsio * 1.8 + 32;
  }
  
  double converterGrauReaumur(){
    return this.grauReaumur = this.grauCelsio *  0.8;
  }
  
  double converterGrauKelvin(){
    return this.grauKelvin = this.grauCelsio + 273.15;
  }
  
  double converterGrauRankine(){
    return this.grauRankine = this.grauCelsio* 1.8 + 32 + 459.67;
  }  
}

void main() {

   Conversao conv = new Conversao();
   conv.grauCelsio = 25;
  
   print("Conversão para: ");
   print("Grau Célsio: ${conv.grauCelsio}");  
   print("Grau Fahrenheit:  ${conv.converterGrauFahrenheit()}");
   print("Grau Reaumur: ${conv.converterGrauReaumur()}");
   print("Grau Rankine: ${conv.converterGrauRankine()}");
   print("Grau Kelvin: ${conv.converterGrauKelvin()}");
}
