// EM DESENVOLVIMENTO!!!!

/*Crie uma versão modificada do programa anterior, nela o programa ele
deverá ser executado 2 vezes, ao final de cada loop ele deverá apresentar a
situação de todos os personagens*/


import 'dart:io';
import 'dart:math';
//classe pessoa para receber os dados informados.
class Personagem {

  int forca=0, inteligencia=0, destreza=0, reflexos=0, carisma=0;
String nome = "";
  //recebe os dados do this.
Personagem(String nomePersonagem,int forcaPersonagem, int inteligenciaPersonagem, int destrezaPersonagem, int reflexoPersonagem, int carismaPersonagem )
{
    this.nome = nomePersonagem;
    this.forca = forcaPersonagem;
    this.inteligencia = inteligenciaPersonagem;
    this.destreza = destrezaPersonagem;
    this.reflexos = reflexoPersonagem;
    this.carisma = carismaPersonagem;
      
  }

  // Método para exibir os dados do personagem na tela
  void exibirDados() {
    
    print(' ________________________');
    print("|Nome         : ${this.nome}  |");
    print("|Força        : ${this.forca}       |");
    print("|Inteligência : ${this.inteligencia}      |");
    print("|Destreza     : ${this.destreza}       |");
    print("|Reflexos     : ${this.reflexos}        |");
    print('|Carisma      : ${this.carisma}      |');
    print(' ------------------------');    
  }
    void perderForca (){
    this.forca -= 10;
  }
   void randomizarReflexos() {
    var rng = new Random();
    this.reflexos = rng.nextInt(31) + 20;
  }
}
void main() {
int paraContinuar=1;
  List<Personagem> listaPersonagem = [];
print("personagens e suas informações");
	listaPersonagem.add(  Personagem("Karolzinha",50, 100, 25, 2, 110)  );
  listaPersonagem.add(  Personagem("Elichata",60, 110, 35, 4, 120));
  listaPersonagem.add(  Personagem ("Graz",57, 120, 45, 6, 130));
  listaPersonagem.add(  Personagem ("Natielly",80, 130, 55, 8, 140));
  listaPersonagem.add(  Personagem ("Bruna",90, 140, 65, 10, 100));

	//Exibindo Resultados
	listaPersonagem[0].exibirDados();
  listaPersonagem[1].exibirDados();
  listaPersonagem[2].exibirDados();
  listaPersonagem[3].exibirDados();
  listaPersonagem[4].exibirDados();

  //loop para o usuario informar quais dos personagem vão perder ponto.
for(int i = 0; i < 2; i++){
   print("\nInforme o número do personagem que perdera os 10 pontos de força: \n");
  print("1- Karolzinha \n2- Elichata \n3- Grazi \n4- Natielly \n5- Bruna\n");
  print("Digite:");
  // lê a entrada do usuário e perde força e reflexo do personagem selecionado
  int numeroPersonagem = int.parse(stdin.readLineSync()!);
  //puxa dos dados do personagem solicitado acima pelo usuario.
  switch (numeroPersonagem) {
      /*cases com função de puxar os dados do usuario com a força diminuida 
      e exibir os dados do personagem atualizada.*/
    case 1:
      listaPersonagem[0].perderForca();
      print("\nDados do personagem selecionado:");
      listaPersonagem[0].exibirDados();
      break;
    case 2:
      listaPersonagem[1].perderForca();
      print("\nDados do personagem selecionado:");
      listaPersonagem[1].exibirDados();
      break;
    case 3:
      listaPersonagem[2].perderForca();
      print("\nDados do personagem selecionado:");
      listaPersonagem[2].exibirDados();
      break;
    case 4:
      listaPersonagem[3].perderForca();
      print("\nDados do personagem selecionado:");
      listaPersonagem[3].exibirDados();
      break;
    case 5:
      listaPersonagem[4].perderForca();
      print("\nDados do personagem selecionado:");
      listaPersonagem[4].exibirDados();
      break;
    default:
      print("Opção inválida!");  
  }   
  //mostra os dados do personagem atualizado apos finalizar o loop.
  print("\n -> Dados atualizados");
  for(int i = 0; i < listaPersonagem.length; i++){
   listaPersonagem[i].exibirDados();
}
}
 /*solicita ao usuario numero do personagem que ela deseja ramdomizar os dados do reflexos.*/
   print("\nDigite o número do primeiro personagem que terá seus reflexos randomizados:");
  int numeroPersonagem1 = int.parse(stdin.readLineSync()!);
 /*solicita ao usuario numero do personagem que ela deseja ramdomizar os dados do reflexos.*/
  //puxa os dados execulta a funçao de radomizar.
  listaPersonagem[numeroPersonagem1 - 1].randomizarReflexos();
  print("-----Reflexos atualizado-----");
  // Exibe os dados atualizados.
  listaPersonagem[numeroPersonagem1 - 1].exibirDados();
  //puxa os dados execulta a funçao de radomizar.
 print("\nDigite o número do segundo personagem que terá seus reflexos randomizados:");
  int numeroPersonagem2 = int.parse(stdin.readLineSync()!);
  listaPersonagem[numeroPersonagem2 - 1].randomizarReflexos();
  print("-----Reflexos atualizado-----");
  // Exibe os dados atualizados.
  listaPersonagem[numeroPersonagem2 - 1].exibirDados();
  //Exibe todos os dados atualizados.
  print("\n------------- Atualizados---------------\n");
   for(int i = 0; i < listaPersonagem.length; i++){
   listaPersonagem[i].exibirDados();
}
}
   

