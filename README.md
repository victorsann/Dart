
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/119726639-b72bf980-be47-11eb-8550-758b001ec143.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=dart&message=Language&color=blue&style=for-the-badge&logo=Dart"/>


O Dart é uma linguagem de script, type safe, multiparadigma e orienta a objetos, desenvolvida e mantida pela Google. Utilizada em diversas stacks do desenvolvimento de aplicações, sendo mais associada ao Flutter, um de seus frameworks mais populares, e por consequência ao desenvolvimento mobile.

Por ser multeplataformas, o Dart acompanha duas ferramentas, ou soluções, que possibilitam o seu uso: o Dart Native e o Dart Web. Tendo como principal recurso a máquina virtual responsável por compilar a linguagem no Just-in-Time(JIT) process, além do AOT(Ahead-of-Time), esta sendo responsável por converter o código escrito em Dart para machine code/código nativo, seja em Android ou IOS, ou para JavaScript, falando específicamente do Dart Web.


<h2>Preparando o Ambiente</h1>


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


A partir deste ponto, é possível utilizar os comandos Chocolatey para executar uma aplicação Dart-SDK. Sendo assim, acesse um diretório desejado através do cmd e execute:

    dart create -t console-full cli


<h2>Extensão Dart</h2>


Antes de executar o app criado, é importante ter instalado um editor de código(sendo o vscode o mais recomendado) e a extensão da linguagem utilizada:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120421361-844c9e80-c33c-11eb-9507-c10fa62f84f7.png">
</div>


Com os pacotes e o ambiente devidamente definidos e intalados, execute os comandos a seguir para rodar a aplicação:

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


<h2>Conceitos</h2>


Alguns pontos devem ser matidos em mente no processo de aprendizado do Dart, eles são:


<!-- - Tudo o que pode ser acoplado a uma variável é um objeto, e todo objeto é uma instância de uma classe, mesmo números, funções e null são objetos;

- Apesar de ser fortemente tipada, a definição de tipos é opcional no Dart, já que a linguagem pode inferir tipos a partir dos dados recebidos;

- É possível tornar uma variável nullable usando o marcador (?) no fim da sua definição de tipo. O oposto disso é definir o marcador (!). Por exemplo: int? (integers ou nullable)  /  int x = nullableButNotNullInt!;

- O Dart suporta tipagem genérica, como List<int>(uma lista de integers) ou List<Object>(uma lista de objetos de qualquer tipo);

- O Dart suporta funções de alto nível(como main( )), assim como funções amarradas a classes ou objetos(static e instâncias de métodos, respectivamente). Também é possível criar funções dentro de funções(funções aninhadas ou locais);

- Da mesma forma, o Dart suporta variáveis de alto nível, assim como variáveis amarradas a uma classe ou objeto(static e variáveis instanciadas). Variáveis intanciadas são muitas vezes conhecidas como fields ou propriedades;

- Diferente da linguagem Java, o Dart não possui as palavras-chave public, protected e private. Se um identificador inicia com uma underline(_), ele passa a ser private;

- Identificadores podem iniciar com uma letra ou underline(_), seguida de qualquer combinação de caracteres e dígitos; --> 


<h2>Built-in Types</h2>


O Dart possui os seguintes tipos internos:


<h3>Number</h3>


int - Valores inteiros não maiores que 64 bits, dependendo da plataforma

    int x = 1;
    int hex = 0xDEADBEEF;
    int exponent = 8e5;

double - Valores decimais

    double y = 1.1;
    double exponents = 1.42e5;


<h3>String</h3>


Uma string Dart (object String) contém uma sequência de unidades de código UTF-16

    string s1 = 'Single quotes work well for string literals.';
    string s2 = "Double quotes work just as well.";
    string s3 = 'It\'s easy to escape the string delimiter.';
    string s4 = "It's even easier to use the other delimiter.";


<h3>Interpolação de String</h3> 


A interpolação permite acessar valores identificados por unidades de armazenamento dentro de um string type

    string greeting = "String";
    string value = "Interpolation";
    
    print('${greeting}, ${person}!');
    
    //Output: String Interpolation

 Obs: a interpolação é feita tanto entre aspas simples quanto entre aspas duplas


<h3>Booleans</h3>


Para representar valores boolean o Dart possui o marcador bool, com dois tipos definidos: true e false. Exemplos de definição de um bool:

    // Verifica string vazio

    var fullName = '';
    assert(fullName.isEmpty);
    
    // Verifica valor menor ou igual a 0

    var hitPoints = 0;
    assert(hitPoints <= 0);
    
    // Verifica valor null

    var unicorn;
    assert(unicorn == null);
    
    // Verifica NaN
    
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);


<h3>Runes</h3>


Em Dart as Runes expõem o código unicode de uma string. O unicode define um valor numérico único para cada letra, dígito e símbolo usado em todo o sistema de escrita. Um unicode é normalmente representado da seguinte forma:

    \uXXXX

Onde XXXX é um valor hexadecimal de 4 dígitos. Por exemplo: \u{1f606}, que respesenta o seguinte emoji :satisfied:. O Dart possui um módulo específico para trabalhar esse tipo de dado, sendo definido abaixo:

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

    var i = 42;
    String name = getFileName();
    final b = Foo();

Para indicar que uma variável aceita um nullable usa-se o marcador ? em conjunto com a declaração do seu tipo:

    int? aNullableInt = null;


<h3>Dynamic</h3>


O tipo dynamic define a aceitação de todos os demais tipos a uma variável, dando a linguagem Dart a característica de dinamicidade


    dynamic nome = "Caio Rolla";
    
    dynamic idade = 22;
    
    print(nome); // Caio Rolla
    
    print(idade); // 22
    
    idade = "22 anos";
    
    print(idade); // 22 anos


<h2>Operadores Aritméticos</h2>


O Dart suporta os operadores aritméticos usuais, como mostrado abaixo


<h3>Adição + </h3>


    //Soma os operandos

    assert(2 + 3 == 5);
 

<h3>Subtração - </h3>


    //Subtrai os operandos

    assert(2 - 3 == -1);


<h3>-expr</h3>


    //Inverte o sinal da expressão


<h3>Multiplicação * </h3>


    //Multiplica os operandos

    assert(2 * 3 == 6);


<h3>Divisão / </h3>


    //Divide os operandos

    assert(5 / 2 == 2.5); // Resulta em um double


<h3>Divisão Inteira ~/ </h3>


    //Retorna um integer

    assert(5 ~/ 2 == 2); // Resulta em um int


<h3>Resto % </h3>


    //Retorna o resto da operação

    assert(5 % 2 == 1); // Resto


<h2>Incremento</h2>


O operador de incremento incrementa seu operando em 1. O operador de incremento é suportado em duas formas: 


<h3>Pré Fixado ++X</h3>


O resultado de ++ x é o valor de x após a operação, como mostra o exemplo a seguir:

    var a, b;
    
    a = 0;
    b = ++a; 
    assert(a == b); // 1 == 1


<h3>Pós Fixado X++</h3>


O resultado de x ++ é o valor de x antes da operação, como mostra o exemplo a seguir:

    var a, b;

    a = 0;
    b = a++; 
    assert(a != b); // 1 != 0


<h2>Decremento</h2>


O operador de decremento diminui seu operando em 1. O operador de decremento é suportado em duas formas: 


<h3>Pré Fixado --X</h3>


O resultado de --x é o valor de x após a operação, como mostra o exemplo a seguir:

    a = 0;
    b = --a; 
    assert(a == b); // -1 == -1
    

<h3>Pós Fixado X--</h3>


O resultado de x-- é o valor de x antes da operação, como mostra o exemplo a seguir:

    a = 0;
    b = a--; 
    assert(a != b); // -1 != 0


<h2>Operadores Relacionais</h2>


Relacionam operandos tendo como retorno um boolean, sendo true caso a operação seja verdadeira e false caso seja falsa. Eles são:


<h3> Igualdade == </h3>


Retorna true caso o valor numérico dos operandos seja igual

    assert(2 == 2); //output: true


<h3> Diferença != </h3>


Retorna true caso o valor numérico dos operandos for diferente 

    assert(3 != 3); //output: false 


<h3> Maior que > </h3>


Retorna true caso o valor numérico do operando da esquerda seja maior que o da direita

    assert(3 > 2); //output: true


<h3> Menor que < </h3>


Retorna true caso o valor numérico do operando da esquerda seja menor que o da direita

     assert(4 < 3); //output: false


<h3> Maior ou igual >= </h3>


Retorna true caso o valor numérico do operando da esquerda seja maior ou igual ao do operando da direita

     assert(3 >= 3); //output: true


<h3>Menor ou igual <= </h3>


Retorna true caso o valor numérico do operando da esquerda seja menor ou igual ao do operando da direita

     assert(4 <= 3); //output: false


<h2>Operadores de Teste</h2>


Os operadores type test definem tipos no processo compilação. Eles são definidos em três:


<h3>as</h3>


    //Typecast

    (employee as Person).firstName = 'Bob';


<h3>is</h3>


    //Retorna true caso o objeto tenha o tipo especificado

    if (employee is Person) {
      // Type check
      employee.firstName = 'Bob';
    }


<h3>is!</h3>


    //Retorna true caso o objeto tenha o tipo diferente do especificado

    if (employee is! Person) {
      // Type check
      employee.firstName = 'Bob';
    }


<h2>Operadores de Auto Atribuição</h2>

Operações que relacionam dois operandos de forma que o primeiro operando recebe o valor da operação entre seu valor e o de um segundo operando

     x  =   y | O operando x recebe o operando y
     x  -=  y | O operando x recebe a subtração entre os operandos x e y
     x  /=  y | O operando x recebe a divisão entre os operandos x e y
     x  %=  y | O operando x recebe o resto da divisão entre os operandos x e y
     x  +=  y | O operando x recebe a soma entre os operandos x e y
     x  *=  y | O operando x recebe a multiplicação entre os operandos x e y
     x  ~/= y | O operando x recebe um int da divisão entre os operandos x e y
 

<h2>Operadores Lógicos</h2>


Os operadores lógicos definem um valor boolean como o retorno entre uma operação entre dois operandos, sempre retornando true ou false


<h3>Negação !</h3>


    if(!data) {
        ...
    }

Se o valor chamado data for definido como true, ele passa a ser false, e vice versa 


<h3>Disjução ||</h3>


    if(!data || value) {
        ...
    }

Chamado de OR lógico, só retorna true caso um dos operandos corresponda ao valor boolean true


<h3>Conjunção &&</h3>


    if(!data && value) {
          ...
      }

O operador de conjunção, também chamado de AND lógico define que o resultado de uma operação como true se ambos os operandos forem verdadeiros


<div align="center">
  <h1>Unidades de Armazenamento</h1>
</div>


<h2>Variáveis</h2>


Assim como em qualquer linguagem de programação, as variáveis em Dart são uma unidade de armazenamento e de referência de dados, tendo aqui algumas características importantes a serem mencionadas


<h2>Declarando Variáveis</h2>


A variável a seguir é inicializada com a palavra-chave var(reservada para essa função), um identificador e um valor inicial. Esta comtém uma referência ao valor que carrega

    var data = 'Dart';

A definição do tipo dessa variável é inferida pelo valor que ela carrega, sendo nesse caso um string. Por possuir uma tipagem forte, o Dart permite a definição de tipos de forma implícita e explícita. Sendo a variável acima um exemplo da tipagem explícita. A seguir estão alguns exemplos de variáveis com um tipo pré definido:

    // O tipo Object não possui tipagem restrita, aceitando qualquer tipo

    Object data = 'Dart';

    // String

    String data = 'Dart';

    // Double

    Double data = 1.78;

    // Int

    Int data = 1;

    // O tipo num define que a variável aceita qualquer valor numérico, seja int ou double

    num pi = 3;
    pi = 3.14;


<h2>Variáveis não Iniciadas</h2>


Uma variável não iniciada é definida por uma unidade de armazenamento e referência cujo espaço na memória não foi ocupado no momendo da declaração, sendo possível oculpar este valor posteriormente

    int empty;

    empty = 1938;


<h2>Variáveis Late</h2>


O Dart possui, desde a versão 2.12, o modificador Late, que é usado em dois casos: 

- Declaração de variáveis non-nullable que são iniciadas após sua delcaração;
- Lazily initializing de uma variável;

Normalmente o controle de análise de fluxo do Dart detecta quando uma variável é definida com valor non-nullable antes de ser utilizada, mas esse processo nem sempre é eficaz. Isso noramalmente ocorre com variáveis de alto nível e vaiáveis instanciadas.

Caso o desenvolvedor esteja seguro de que a variável foi definida antes de ser usada, tendo a discordância do Dart, é possível corrigir o erro definindo a variável como late. Exemplo:

    late String description;
    
    void main() {
      description = 'Feijoada!';
      print(description);
    }


<h2>Final e const</h2>


Definir um valor como fixo ou constante demanda o uso da palavra chave final ou const, dando à unidade de armazenamento e referência a característica de imutabilidade do seu valor em tempo de compilação

    // Sem definição de tipo

    final name = 'Bob';

    // Com definição de tipo

    final String nickname = 'Bobby';


<h2>List</h2>


Um array, vetor ou variável composta em Dart é definido como uma lista de objetos, portanto, são normalmente chamadas de List

    // Sem definição de tipo

    var list = [1, 2, 3];

    // Com definição de tipo

    List numbers = [1, 2, 3];

Uma outra definição para uma List é uma coleção indexável de objetos com um length, cujos principais tipos são:

- Lists de Comprimentos Fixos;
- Lists de Comprimento Cultivaveis ou de Tamanho não Fixo;

<!-- Assim como em boa parte das linguagens que tratam de vetores, há uma série de métodos e atributos para tratar essas estruturas. Abaixo estão listados alguns dos quais se relacionam com o tipos de list:


<h3>Constructors</h3>


Estruturas de criação de um List com diferentes restrições

|        Constructor                                      |                                   Descrição                                     |
| ------------------------------------------------------- | ------------------------------------------------------------------------------- |
|  List[ type length ]                                    |  Cria um List de comprimento definido                                           | 
|  List.empty()                                           |  Cria uma nova lista vazia de tamnho fixo                                       |
|  List.filled( type length value )                       |  Cria um List de tamanho fixo com comprimento definido e preenche cada posição  |
|  List.from( iterables elements )                        |  Cria um List de tamanho cultivável contendo todos os elements                  |
|  List.generate( type length, E generator(type index) )  |  Gera uma lista de tamanho cultivável com valores                               |
|  List.of( iterable <E> elements )                       |  Cria um List de tamanho cultivável a partir de elements                        |
|  List.unmodifiable( iterable elements )                 |  Cria um List inalterável contendo todos os elements                            |


<h3>Proprieties</h3>


Atributos de consulta dos lists

|       Proprieties       |    Valor de Retorno    |                                   Descrição                                      |
| ----------------------  | ---------------------- | -------------------------------------------------------------------------------- |
|  .first                 |  E                     |  Retorna o primeiro elemento                                                     | 
|  .hashCode              |  int                   |  Retorna um intenger que representa o código hash para o objeto list em questão  |
|  .isEmpty               |  bool                  |  Retorna um boolean true se não houver elementos nesta conllection               |
|  .isNotEmpty            |  bool                  |  Retorna um boolean true se houver amenos um elemento do collection              |
|  .iterator              |  iterator              |  Retorna um novo Iterator que permite iterar os elementos do Iterable            |
|  .last                  |  E                     |  Retorna o último elemento                                                       |
|  .length                |  int                   |  Retorna um intenger que representa o número de objetos no List                  |
|  .reversed              |  iterable<E>           |  Um Iterable do objeto List na ordem reversa                                     |
|  .single                |  E                     |  Verifica se há apenas um elemento no Iterable e retorna esse elemento           |
 

<h3>Methods</h3>

Métodos de execução de um List

|         Methods         |                                    Descrição                                      |
| ----------------------  |  -------------------------------------------------------------------------------- |
|  add(value)             |   Adiciona um valor ao final do List, extendendo o tamanho em 1                   | 
|                         |                                                                                   | -->


<h2>Set</h2>


Um set é uma coleção não ordenada de itens únicos, semelhante a um array ou objeto, com métodos e atributos próprios. Estes usados para adicionar, excluir e alterar elementos. Exemplos do Set type:
    
    //Set vazio

    Set<String> names = {}; 
    var names = <String>{};

    //Set preenchido

    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

<!-- Assim como em boa parte das linguagens que tratam de vetores, há uma série de métodos e atributos para tratar essas estruturas. Abaixo estão listados alguns dos quais se relacionam com o type Set:


<h3>Constructors</h3>


Estruturas de criação de um Set com diferentes restrições

|        Constructor                                      |                                   Descrição                                     |
| ------------------------------------------------------- | ------------------------------------------------------------------------------- |
|  Set()                                                  |  Cria um Set vazio                                                              | 
|  Set.from(Iterable elements)                            |  Cria um Set que contém todos os elements                                       |
 -->


<h2>Map</h2>


Em geral um map é um objeto que associa Chaves e valores, ambos podendo ser de qualquer tipo, não sendo possível repetir as chaves. O tipo Map também possui métodos e atributos relacionados a edição, atribuição e exclusão das chaves e seus valores

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


<h2>Functions</h2>


Por ter uma forte presença da orientação a objetos, mesmo as funções são objetos possuidoras de tipos. Isso torna possível a atribuir funções a variáveis ou torná-las argumentos em outras funções. Abaixo segue a estrutura básica de uma função no Dart:

    type functionName(arguments) {
      return value;
    }

Um ponto a se ater é que funções tipadas sempre devem possuir um valor equivalente a seu tipo como retorno. Além disso, funções podem ser definidas como type annotation ou void no Dart, podendo ser escritas de forma mais encurtada, caso possuam apenas uma expressão:


<h3>Type Annotation</h3>


    //Omite o tipo de retorno

    functionName(arguments) {
      return value;
    }


<h3>Void Functions</h3>


    //Não possui retorno

    void functionName(arguments) {
        ...
    }


<h3>Shorthand Syntaxs</h3>


    //Caso a função tenha apenas uma expressão 

    type functionName(arguments) => value;


<h2>Parameters</h2>


Uma função pode ter qualquer número de required positional parameters. Estes ainda podem ser seguidos de named parameters ou por optional positional parameters (mas não ambos)


<h3>Named Parameters</h3>


Named Parameters são opcionais a não ser que sejam definidos como required. Abaixo há a definição da sintaxe de uma função com Named Functions

    functionName(paramName: value, paramName: value);


Ao definir uma função que recebe parâmetros use-se {param1, param2, ...}


    void functionName({bool? bold, bool? hidden}) {

      ...    
        
    }


<h3>Required Parameters</h3>


São definados quando o valor recebido via parâmetro é obrigatório, gerando um issue caso não seja disponibilizado

    type functionName({Key? key, required Widget child})


<h3>A Função main()</h3>


Todas as aplicações devem conter a já mencionada função de alto-nível do tipo main(), cuja função é agir como o entrypoint do app. Retornando void, a função main também possui um parâmetro opcional do tipo List<String> como argumento

    void main() {
      print('Hello, World!');
    }


<h3>Funções Anônimas</h3>


Boa parte das funções são definidas como named, ou nomeadas, como a própria main(). Uma froma alternativa de criação de funções é omitindo seu nome ou identificador, sendo assim chamada de anonymous function, lambda ou closure. 

    ([[Type] param1[, …]]) {

      ...

    };

O exemplo abaixo define uma função anônima com um parâmetro de tipo anônimo. A função, invocada para cada item da lista, printa uma string incluindo o valor no index especificado


    const list = ['apples', 'bananas', 'oranges'];
    list.forEach((item) {
      print('${list.indexOf(item)}: $item');
    });

    //Output:

    0: apples
    1: bananas
    2: oranges


<h3>Lexical scope</h3>


O Dart é uma linguagem com escopo léxico, o que significa que o escopo das variáveis é determinado estaticamente, seguindo o layout do código escrito. Basicamente, as variáveis declaradas anteriormente, ou dentro das chaves de uma estrutura de código, são definidas como parte do escopo

    bool topLevel = true;
    
    void main() {
      var insideMain = true;
    
      void myFunction() {
        var insideFunction = true;
    
        void nestedFunction() {
          var insideNestedFunction = true;
    
          assert(topLevel);
          assert(insideMain);
          assert(insideFunction);
          assert(insideNestedFunction);
        }
      }
    }



<h2>Declarações de Controle de Fluxo</h2>


O controle do fluxo de dados é, em suma, um dos aspectos mais importantes da programação. O Dart possui as seguintes estruturas para controle de fluxo de dados 


<h2>If-else</h2>


    if ( booleanExpression ) {
      
      ...
      
    } else if ( anotherBooleanExpression ) {
      
      ...


    } else {
      
      ...

    }


<h2>Exepressões Condicionais</h2>


Além dos expressões padrão if-else o Dart conta com dois operadores lógicos que exercem a mesma função, substituindo-as em determinadas situações


<h3>condition ? expr1 : expr2</h3>


Se condition tiver true como valor, o valor de expr1 é retornado, de outra forma, o valor de expr2 é retornado

    var visibility = isPublic ? 'public' : 'private';


<h3>expr1 ?? expr2</h3>


O valor de expr1 é retornado caso ele seja diferente de null, de outra forma, o valor de expr2 é retornado

    String playerName(String? name) => name ?? 'Guest';


<h2>For Loops</h2>


    var message = StringBuffer('Dart is fun');
    for (var i = 0; i < 5; i++) {
      message.write('!');
    }

Os fechamentos dentro dos loops for do DART capturam o valor do índice, evitando uma armadilha comum encontrada no JavaScript.

    var callbacks = [];
    for (var i = 0; i < 2; i++) {
      callbacks.add(() => print(i));
    }
    callbacks.forEach((c) => c());

O output seria 0 e depois 1, como esperado. Em contraste, se o exemplo fosse feito em JavaScript, o retorno seria 2 e depois 2 


<h3>For-in</h3>


Se o objeto de interação for um iterable(como um List ou Set), e se não é preciso saber o contador de interação atual, é possível utilizar o for-in

    for (var varName in iterable) {
      
      ...

    } 


<h2>While e do-while</h2>


Um loop while avalia a condição antes do loop

    while (booleanExpression) {

      ...

    }

Um do-while avalia a condição depois do loop


    do {
      
      ...

    } while (booleanExpression);


<h3>Break e continue</h3>


O break é utilizado para quebrar um loop em execução quando o valor definido em uma condicional é encrontrado

    while (true) {
      if (booleanExpression) break;
      
      ...

    }

O continue é utilizado para pular para o próximo loop quando o valor definido em uma condicional é encrontrado

    for (int i = 0; i < candidates.length; i++) {
      var candidate = candidates[i];
      if (booleanExpression) {

        continue;

      }
      candidate.interview();


<h2>Switch-case</h2>


O Switch no Dart compara integer, string ou constantes de tempo de compilação usando o operador de igualdade(==). Todos os objetos comparados devem ser instâncias da mesma classe(e não de qualquer um de seus subtipos), e a classe não pode sobrepor o operador. 

Todas as clausulas case non-empty têm como regra terminar com um break. Outros meios válidos para termiar um non-empty case é usando o continue, o throw ou um return

Caso nenhum case combine com o valor de comparação, executa-se uma clausula default:

    var command = 'OPEN';
    switch (command) {
      case 'CLOSED':
        executeClosed();
        break;
      case 'PENDING':
        executePending();
        break;
      case 'APPROVED':
        executeApproved();
        break;
      case 'DENIED':
        executeDenied();
        break;
      case 'OPEN':
        executeOpen();
        break;
      default:
        executeUnknown();
    }


<h2>Try-Catch</h2>


O Catch captura uma uma exceção, impedindo essa exceção de se propagar, a menos que ela seja relançada. Capturar essa exceção permite que ela seja tratada

    try {
      
      ...

    } on Exception {
     
      ...
     
    }

Para tratar um código que pode lançar mais de um tipo de exceção, é possível especificar multiplas clausulas catch. A primeira clausula que combinar com o tipo de objeto lançado trata a exceção. Se a clausula catch não especificar um tipo ela pode tratar qualquer objeto lançado

    try {
      
      ...

    } on Exception {

      // Uma exceção expecífica

      ...

    } on Exception catch (e) {

      // Qualque outra exceção

      print(e);

    } catch (e) {

      // Clausula de tipo não especificado, trata todos

      print(e);

    }


<h3>Finally</h3>


Para garantir que o trecho de código será executado mesmo se uma exceção for lançada, usa-se a clausula finally. Se a exceção não combinar com a nenhum dos cases, a exceção é propagada depois que a clausula finilly for executada

    try {
      
      ...

    } finally {

      // Sempre ocorre, mesmo se uma exceção for lançada
      
      ...

    }