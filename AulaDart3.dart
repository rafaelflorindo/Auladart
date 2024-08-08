void main() {
  double grauCelsio = 23;
  double grauFahrenheit, grauReaumur, grauRankine, grauKelvin; 
  
  grauFahrenheit = grauCelsio * 1.8 + 32;
  grauKelvin = grauCelsio + 273.15;
  grauReaumur = grauCelsio * 0.8;
  grauRankine = grauCelsio * 1.8 + 32 + 459.67;
  
  print("Grau Célsio: $grauCelsio");
  print("Conversão para: ");
  print("Grau Fahrenheit: $grauFahrenheit");
  print("Grau Reaumur: $grauReaumur");
  print("Grau Rankine: $grauRankine");
  print("Grau Kelvin: $grauKelvin");

  
  //print("Grau Célsio: ${grauCelsio+1}");
}
