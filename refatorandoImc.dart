import 'dart:io';

void main(){

String name;
double peso,altura,resultado;
   name = pegarNome();
   peso = pegarPeso();
   altura = pegarAltura();

  resultado = calcularImc(peso: peso, altura: altura); // O "peso: & altura:" é necessario por causa do required.

  var imcFormatado = resultado.toStringAsFixed(2);

  print("O $name tem o IMC de $imcFormatado");   

  if(resultado > 25)
  print("Você está acima do peso");
  else if(resultado < 18)
  print("Você está abaixo do peso");
  else 
  print("Você está com o peso normal");
}

double calcularImc({ required double peso, required double altura}){ // Faz com que seja obrigatório inserir um valor.
return peso / (altura * altura);
}

String pegarNome(){
  print("Digite seu nome: ");
  final name = stdin.readLineSync()!;

  return name;
}

double pegarPeso(){
  print("Digite seu peso: ");
  final peso = double.parse(stdin.readLineSync()!); 

  return peso;
}

double pegarAltura(){
  print("Digite sua altura: ");
  final altura = double.parse(stdin.readLineSync()!);

  return altura;
}