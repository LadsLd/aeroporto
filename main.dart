import 'dart:io';
import 'AeroPorto.dart';
import 'telas.dart';
void main(){
    AeroPorto rj = new AeroPorto();
    AeroPorto ba = new AeroPorto();
    AeroPorto sp = new AeroPorto();
    
     int menu = 0;
     String escolhaDestino ='';
     String pes1 ='';
     
     print('\x1B[2J\x1B[0;0H');
     while(menu!=6){
     switch (menu) {
       case 1:
         escolhaESTADO();
          print('Digite o estado desejado: ');
          escolhaDestino = stdin.readLineSync()!.toUpperCase();
          if (escolhaDestino == 'RJ') {
          print('LISTA DE PASSAGEIROS');
          print(rj.mostrarVooRJ());
          escolhaDestino = stdin.readLineSync()!;
          }
          if (escolhaDestino == 'BA') {
          print('LISTA DE PASSAGEIROS');
          print(ba.mostrarVooRJ());
          escolhaDestino = stdin.readLineSync()!;
          }
           if (escolhaDestino == 'SP') {
          print('LISTA DE PASSAGEIROS');  
          print(sp.mostrarVooRJ());
          escolhaDestino = stdin.readLineSync()!;
          }
         break;
 

       case 2:
        escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();
       if (escolhaDestino == 'RJ') {
        print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
        pes1 = stdin.readLineSync()!;
          final cpf = rj.bhRJ.where((user) => user['CPF'] == pes1);
            if (cpf.isEmpty) {
            print('PASSAGEIRO NÃO REGISTRADO NESTE VOO !');
            pes1 = stdin.readLineSync()!;
          } else {
            print('LISTA DE PASSAGEIROS');
            stdout.writeln(cpf);
            pes1 = stdin.readLineSync()!;
          }
       }

        if (escolhaDestino == 'SP') {
         print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
          pes1 = stdin.readLineSync()!;
          final cpf = sp.bhRJ.where((user) => user['CPF'] == pes1);
            if (cpf.isEmpty) {
            print('PASSAGEIRO NÃO REGISTRADO NESTE VOO !');
            pes1 = stdin.readLineSync()!;
          } else {
            print('LISTA DE PASSAGEIROS');
            stdout.writeln(cpf);
            pes1 = stdin.readLineSync()!;
          }
       }

        if (escolhaDestino == 'BA') {
        print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
        pes1 = stdin.readLineSync()!;
          final cpf = ba.bhRJ.where((user) => user['CPF'] == pes1);
            if (cpf.isEmpty) {
            print('PASSAGEIRO NÃO REGISTRADO NESTE VOO !');
            pes1 = stdin.readLineSync()!;
          } else {
            print('LISTA DE PASSAGEIROS');
            stdout.writeln(cpf);
            pes1 = stdin.readLineSync()!;
          }
       }
       break;


       case 3:
        escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();
          if (escolhaDestino == 'RJ') {
          if (rj.mostrarVooRJ().length >= 5) {
              rj.cadPassageiroEspera([]);
              print('VOO LOTADO! AGUARDE NA FILA DE ESPERA');
              escolhaDestino = stdin.readLineSync()!;
          }else{
              rj.cadPassageiroBHrj([]);
              print('PASSAGEIRO CADASTRADO COM SUCESSO');
              escolhaDestino = stdin.readLineSync()!;
          }
        }
          if (escolhaDestino == 'BA') {
          if (ba.mostrarVooRJ().length >= 5) {
              ba.cadPassageiroEspera([]);
              print('VOO LOTADO! AGUARDE NA FILA DE ESPERA');
              escolhaDestino = stdin.readLineSync()!;
          }else{
              ba.cadPassageiroBHrj([]);
              print('PASSAGEIRO CADASTRADO COM SUCESSO');
              escolhaDestino = stdin.readLineSync()!;
          }
        }
          if (escolhaDestino == 'SP') {
          if (sp.mostrarVooRJ().length >= 5) {
              sp.cadPassageiroEspera([]);
              print('VOO LOTADO! AGUARDE NA FILA DE ESPERA');
              escolhaDestino = stdin.readLineSync()!;
          }else{
              sp.cadPassageiroBHrj([]);
              print('PASSAGEIRO CADASTRADO COM SUCESSO');
              escolhaDestino = stdin.readLineSync()!;
          }
        }
       break;


       case 4:
       escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();
        if (escolhaDestino == 'RJ') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          rj.bhRJ.removeWhere((element) => element.remove('CPF') == pes1);
        }
         if (escolhaDestino == 'SP') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          sp.bhRJ.removeWhere((element) => element.remove('CPF') == pes1);
        }
         if (escolhaDestino == 'BA') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          ba.bhRJ.removeWhere((element) => element.remove('CPF') == pes1);
        }
        break;


        case 5:
        escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();
        if (escolhaDestino == 'RJ') {
        print('LISTA DE ESPERA');
        print(rj.mostraEspera());
        escolhaDestino = stdin.readLineSync()!;
        }
        if (escolhaDestino == 'SP') {
        print('LISTA DE ESPERA');  
        print(sp.mostraEspera());
        escolhaDestino = stdin.readLineSync()!;
        }
        if (escolhaDestino == 'BA') {
        print('LISTA DE ESPERA');  
        print(ba.mostraEspera());
        escolhaDestino = stdin.readLineSync()!;
        }
        break;
       default:
     }
     display();
     menu = int.parse(stdin.readLineSync()!);
     }
}