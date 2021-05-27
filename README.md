
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/119726639-b72bf980-be47-11eb-8550-758b001ec143.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=dart&message=Language&color=blue&style=for-the-badge&logo=Dart"/>


O Dart é uma linguagem de script, type safe, multiparadigma e orienta a objetos, desenvolvida e mantida pela Google. Utilizada em diversas stacks do desenvolvimento de aplicações, sendo mais associada ao Flutter, um de seus frameworks mais populares, e por consequência ao desenvolvimento mobile. Por ser multeplataformas, o Dart acompanha duas ferramentas, ou soluções, que possibilitam o seu uso: o Dart Native e o Dart Web. Tendo como principal recurso a máquina virtual responsável por compilar a linguagem no Just-in-Time(JIT) process, além do AOT(Ahead-of-Time), esta sendo responsável por converter o código escrito em Dart para machine code/código nativo, seja em Android ou IOS, ou para JavaScript, falando específicamente do Dart Web.


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


int - Valores inteiros não maiores que 64 bits, dependendo da plataforma

    var x = 1;
    var hex = 0xDEADBEEF;
    var exponent = 8e5;

double - Valores decimais

    var y = 1.1;
    var exponents = 1.42e5;


<h3>String</h3>


Uma string Dart (object String) contém uma sequência de unidades de código UTF-16

    var s1 = 'Single quotes work well for string literals.';
    var s2 = "Double quotes work just as well.";
    var s3 = 'It\'s easy to escape the string delimiter.';
    var s4 = "It's even easier to use the other delimiter.";


<h3>Booleans</h3>


Para representar valores bolean o Dart possui o marcador bool, com dois tipos definidos: true e false. Exemplos de definição de bool:

    // Check for an empty string.
    var fullName = '';
    assert(fullName.isEmpty);
    
    // Check for zero.
    var hitPoints = 0;
    assert(hitPoints <= 0);
    
    // Check for null.
    var unicorn;
    assert(unicorn == null);
    
    // Check for NaN.
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);


<h3>List</h3>


Um array, vetor ou variável composta em Dart é definido como uma lista de objetos, portanto, são normalmente chamadas de List

    var list = [1, 2, 3];

Os Lists serão mais bem abordados a frente


<h3>Sets</h3>


Um set é uma coleção não ordenada de itens únicos, semelhante a um array ou objeto, com métodos e atributos próprios. Estes usados para adicionar, excluir e alterar elementos. Exemplos do Set type:
    
    //Set vazio

    Set<String> names = {}; 
    var names = <String>{};

    //Set preenchido

    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

Métodos e atributos relacionados a Sets serão mais abordados a frente


<h3>Maps</h3>


Em geral um map é um objeto que associa Chaves e valores, ambos podendo ser de qualquer tipo, não sendo possível repetir as chaves. O tipo Maps também possui métodos e atributos relacionados a edição, atribuição e exclusão das chaves e seus valores

    var gifts = {

    // Chave:   Valor

      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings'
    };
    
    var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 'argon',
    };


<h3>Runes</h3>


Em Dart as Runes expõem o código unicode de uma string. O unicode define um valor numerico único para cada letra, dígito e símbolo usado em todo o sistema de escrita. Um unicode é normalmente representado da seguinte forma:

    \uXXXX

Onde XXXX é um valor hexadecimal de 4 dígitos. Por exemplo: \u{1f606}, que respesenta o seguinte :satisfied:. O Dart possui um módulo específico para trabalhar esse tipo de dado, sendo definido abaixo:

    import 'package:characters/characters.dart'; <==
    ...
    var hi = 'Hi 🇩🇰';
    print(hi);
    print('The end of the string: ${hi.substring(hi.length - 1)}');
    print('The last character: ${hi.characters.last}\n');

    //Console

    $ dart bin/main.dart
    Hi 🇩🇰
    The end of the string: ???
    The last character: 🇩🇰

<h3>Symbols</h3>


Um objeto Symbol representa um operador ou idetificador declarado em um programa Dart, dificilmente utilizados fora de contextos específicos de desenvolvimento. Para definir um Symbol como identificador usa-se # seguido do identificador

    #radix
    #bar


<h3>Null</h3>


O Dart possui um recurso chamado de Null Safety, o qual define que as variáveis de um código Dart são non-nullable, ou não anuláveis, a menos que sejam definidas como tal.

Com o Null safety todas as variáveis do código a seguir são non-nullable:

    // Com o Null-safe, nenhum destes podem ser null

    var i = 42; // Inferred to be an int.
    String name = getFileName();
    final b = Foo();

Para indicar que uma variável aceita um nullable usa-se o marcador ? em conjunto com a declaração do seu tipo:

    int? aNullableInt = null;