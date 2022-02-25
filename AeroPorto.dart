import 'dart:io';

  class AeroPorto{
     List<Map<String, String>> bhRJ = [
    {
      'NOME': 'Ane',
      'CPF': '12345',
      'ENDEREÇO': 'rua 4',
      'TELEFONE': '3344-4211',
      'NMR DA PASSAGEM': '13',
      'NMR DA POLTRONA': '13',
      'NMR VOO': '13',
      'HORÁRIO': '13:00    '
    }
  ];

  List<Map<String, String>> espera = [
    {
      'NOME': 'John',
      'CPF': '12344',
      'ENDEREÇO': 'rua 2',
      'TELEFONE': '3344-4231',
      'NMR DA PASSAGEM': '13',
      'NMR DA POLTRONA': '13',
      'NMR VOO': '13',
      'HORÁRIO': '13:00    '
    }
  ];

  mostrarVooRJ(){
    this.bhRJ = bhRJ;
    return bhRJ;
  }
  
  mostraEspera(){
    this.espera = espera;
    return espera;
  }

  cadPassageiroBHrj(List<Map<String, String>> bhRJ){

  Map<String, String> passageiro = {};
  stdout.writeln('NOME:'); passageiro['NOME'] = stdin.readLineSync()!;
  stdout.writeln('CPF:'); passageiro['CPF'] = stdin.readLineSync()!;
  stdout.writeln('ENDEREÇO:'); passageiro['ENDEREÇO'] = stdin.readLineSync()!;
  stdout.writeln('TELEFONE:'); passageiro['TELEFONE'] = stdin.readLineSync()!;
  stdout.writeln('N° DA PASSAGEM:'); passageiro['NMR DA PASSAGEM'] = stdin.readLineSync()!;
  stdout.writeln('N° DA POLTRONA:'); passageiro['NMR DA POLTRONA'] = stdin.readLineSync()!;
  stdout.writeln('N° DO VOO:'); passageiro['NMR DO VOO'] = stdin.readLineSync()!;
  stdout.writeln('HORARIO DO VOO:'); passageiro['HORÁRIO'] = stdin.readLineSync()!;
  this.bhRJ.add(passageiro);
  }

  cadPassageiroEspera( List<Map<String, String>> espera){

  Map<String, String> passageiro = {};
  stdout.writeln('NOME:'); passageiro['NOME'] = stdin.readLineSync()!;
  stdout.writeln('CPF:'); passageiro['CPF'] = stdin.readLineSync()!;
  stdout.writeln('ENDEREÇO:'); passageiro['ENDEREÇO'] = stdin.readLineSync()!;
  stdout.writeln('TELEFONE:'); passageiro['TELEFONE'] = stdin.readLineSync()!;
  stdout.writeln('N° DA PASSAGEM:'); passageiro['NMR DA PASSAGEM'] = stdin.readLineSync()!;
  stdout.writeln('N° DA POLTRONA:'); passageiro['NMR DA POLTRONA'] = stdin.readLineSync()!;
  stdout.writeln('N° DO VOO:'); passageiro['NMR DO VOO'] = stdin.readLineSync()!;
  stdout.writeln('HORARIO DO VOO:'); passageiro['HORÁRIO'] = stdin.readLineSync()!;
  this.espera.add(passageiro);
  }
}

