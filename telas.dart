import 'dart:io';

void display() {
  //função display
  print('\x1B[2J\x1B[0;0H'); //LIMPAR TELA
  stdout.writeln('▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌');
  stdout.writeln('▐      COMPANHIA ÁEREA QUEDA LIVRE       ▌');
  stdout.writeln('▐                                        ▌');
  stdout.writeln('▐ 1: EXIBIR LISTA DE PASSAGEIROS         ▌');
  stdout.writeln('▐ 2: PESQUISA DE PASSAGEIROS             ▌');
  stdout.writeln('▐ 3: CADASTRO DE PASSAGEIROS             ▌');
  stdout.writeln('▐ 4: EXCLUIR CADASTRO                    ▌');
  stdout.writeln('▐ 5: EXIBIR FILA DE ESPERA               ▌');
  stdout.writeln('▐                                        ▌');
  stdout.writeln('▐                6: SAIR                 ▌');
  stdout.writeln('▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌');
}

void escolhaESTADO() {
  print('\x1B[2J\x1B[0;0H'); //LIMPAR TELA
  stdout.writeln('▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌');
  stdout.writeln('▐      COMPANHIA ÁEREA QUEDA LIVRE       ▌');
  stdout.writeln('▐                                        ▌');
  stdout.writeln('▐        QUAL ESTADO VOCÊ DESEJA ?       ▌');
  stdout.writeln('▐        BH → RJ: TECLE:RJ               ▌');
  stdout.writeln('▐        BH → SP: TECLE:SP               ▌');
  stdout.writeln('▐        BH → BA: TECLE:BA               ▌');
  stdout.writeln('▐                                        ▌');
  stdout.writeln('▐                                        ▌');
  stdout.writeln('▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌');
}