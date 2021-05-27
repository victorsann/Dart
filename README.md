
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/119726639-b72bf980-be47-11eb-8550-758b001ec143.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=dart&message=Language&color=blue&style=for-the-badge&logo=Dart"/>


O Dart é uma linguagem de script, type safe, multiparadigma e orienta a objetos, desenvolvida e mantida pela Google. Utilizada em diversas stacks do desenvolvimento de aplicações, sendo mais assossiada ao Flutter, um de seus frameworks mais populares, e por consequência ao desenvolvimento mobile. Por ser multeplataformas, o Dart acompanha duas ferramentas, ou soluções, que possibilitam o seu uso: o Dart Native e o Dart Web. Tendo como principal recurso a máquina virtual responsável por compilar a linguagem no Just-in-Time(JIT) process, além do AOT(Ahead-of-Time), esta sendo responsável por converter o código escrito em Dart para machine code/código nativo, seja em Android ou IOS, ou para JavaScript, falando específicamente do Dart Web.


<h2>Preparando Ambiente</h1>


Antes de abortar a sintaxe da linguagem de forma aprofundada é preciso criar um ambiente propício para tal. A seguir estão dispostos uma série de passos para a instalação das ferramentas e preparo do ambiente de desenvolvimento.


<h2>Instalação do Dart-SDK</h1> 


O Dart-SDK é uma biblioteca de ferramentas de linha de comando, comumente utilizada em aplicações Web, Server ou de criação de Script, sendo o ambiente mínimo para uso da linguagem. Os comandos a seguir devem ser executados no PowerShell com permição de administrador:


[Instalar Chocolatey](https://chocolatey.org/) - gerenciador de pacotes para o Windows:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]  ::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Verificar instalação

    choco -v

Instalar Dart-SDK 

    choco install dart-sdk


<h2>App Dart-SDK</h1> 


A partir deste ponto é possível utilizar os comandos Chocolatey para executar uma aplicação Dart-SDK. Acesse um diretório desejado através do cmd e execute:

    dart create -t console-full cli


<h2>Extenção Dart</h2>


Antes de executar o app criado, é importante ter instalado um editor de código, sendo o vscode o mais recomendado, e a extenção da linguagem utilizada:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/119747559-5f9e8580-be69-11eb-94dd-10999257f7c9.png">
</div>


Com os pacotes e o ambiente devidamente definidos e intalados, execute a comando a seguir para rodar a aplicação:

    cd cli
    dart run

Uma forma mais simples de executar códigos dart é criar uma file com a extenção .dark, a executando com o <strong>dart run <nome></strong>.
Não sendo necessário a criação de um projeto para tal.


<h2>Hello World</h2>


Uma forma prática de entender a estrutura mais básica de uma linguagem de programação é o popular Hello World, sendo este executado da seguinte forma em Dart:


      void main() 
    {
      print('Hello World');
    }


<h3>Explicando</h3>


* <strong>void</strong> - Por ser uma linguagem fortemente tipada a definição de tipos se aplica inclusive aos métodos, sendo um método void definido por não retornar valor;
* <strong>main()</strong> - Método de execução padrão do arquivo, sendo o primeiro a ser chamado no run time;
* <strong>print()</strong> - Método padrão de impressão de valor;
* <strong>;</strong> - Um detalhe muito importante da linguagem Dart é a presença constante do ponto e vírgula após o fim de um bloco de execução, do contrário é retornado um erro de sintaxe;


<h2>Conceitos Importantes</h2>


Alguns pontos devem ser matidos em mente no processo de aprendizado do Dart, eles são:

<!-- <ul>
 <li>Tudo o que pode ser acoplado a uma variável é um objeto, e todo objeto é uma instância de uma classe, mesmo números, funções e null são objetos;</li>

 <li>Apesar de ser fortemente tipada, a definição de tipos é opcional no Dart, já que a linguagem pode inferir tipos a partir dos dados recebidos;</li>

 <li>É possível tornar uma variável nullable usando o marcador (?) no fim da sua definição de tipo. O oposto disso é definir o marcador (!). Por exemplo: int? (integers ou nullable)  /  int x = nullableButNotNullInt!;</li>

 <li>O Dart suporta tipagem genérica, como List<int>(uma lista de integers) ou List<Object>(uma lista de objetos de qualquer tipo);</li>

 <li>O Dart suporta funções de alto nível(como main( )), assim como funções amarradas a classes ou objetos(static e instâncias de métodos, respectivamente). Também é possível criar funções dentro de funções(funções aninhadas ou locais);</li>

 <li>Da mesma forma, o Dart suporta variáveis de alto nível, assim como variáveis amarradas a uma classe ou objeto(static e variáveis instanciadas). Variáveis intanciadas são muitas vezes conhecidas como fields ou propriedades;</li>

 <li>Diferente da linguagem Java, o Dart não possui as palavras-chave public, protected e private. Se um identificador inicia com uma underline(_), ele passa a ser private;</li>

 <li>Identificadores podem iniciar com uma letra ou underline(_), seguida de qualquer combinação de caracteres e dígitos;</li>

</ul> -->


<h2>Built-in Types</h2>


O Dart possui os seguintes tipos internos:


<h3>Numbers</h3>

* int - Valores inteiros não maiores que 64 bits, dependendo da plataforma;
* double - Valores decimais;

        var x = 1;
        var hex = 0xDEADBEEF;
        var exponent = 8e5;

<h3>String</h3>

<h3>Booleans</h3>

<h3>List</h3>

<h3>Sets</h3>

<h3>Maps</h3>

<h3>Runes</h3>

<h3>Symbols</h3>

<h3>Null</h3>


