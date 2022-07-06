
<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/119726639-b72bf980-be47-11eb-8550-758b001ec143.png">
</div>
<br>
<img src="https://img.shields.io/static/v1?label=dart&message=Language&color=blue&style=for-the-badge&logo=Dart"/>


O Dart é uma linguagem de script type safe, multiparadigma e orienta a objetos, desenvolvida e mantida pela Google. Tendo sido lançada na GOTO Conference de 2011, a linguagem tem ganhado bastante popularidade graças ao Flutter, um dos Frameworks <i>mobile native</i> mais utilizados da atualidade.

<h1>Dart: The platforms</h1>

Por ser multiplataformas, o Dart conta com ferramentas, ou soluções, que possibilitam seu uso de formas distintas: 

- <b>Dart Native</b>: Para apps direcionados a dispositivos móveis e desktop, o Dart inclui sua máquina virtual, ou DartVM, que compila o código Dart de duas formas distintas, sendo elas a compilação just-in-time (JIT) e um compilador ahead-of-time (AOT) que resultam na interpretação em machine code do código escrito.

- <b>Dart Web</b>: Para aplicações direcionados à Web, o Dart inclui um compilador de tempo de desenvolvimento (dartdevc) e um compilador de tempo de produção (dart2js), tendo com resultado, em ambos os casos, a tradução do Dart para JavaScript.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/170975443-1ec28e3b-ea5b-4c1d-9d14-68bebd2ac2fe.png">
</div>

<h2>O tempo de execução do Dart</h2>

Independentemente da plataforma utilizada ou de como o código é compilado, sua execução demanda o Dart runtime. Sendo este o responsável pelas seguintes tarefas críticas:

- Gerenciamento de memória: o Dart usa um modelo de memória gerenciada, em que a memória não utilizada é recuperada por um coletor de lixo (GC).
- Aplicação do sistema de tipo Dart: Embora a maioria das verificações de tipo no Dart sejam estáticas (tempo de compilação), algumas verificações de tipo são dinâmicas (tempo de execução). Por exemplo, o tempo de execução do Dart impõe verificações dinâmicas por verificação de tipo e operadores de conversão.
- Gerenciamento de isolates: o tempo de execução do Dart controla o isolate principal (onde o código normalmente é executado) e quaisquer outros isolates que o aplicativo cria.

Em plataformas nativas, o tempo de execução do Dart é incluído automaticamente em executáveis ​​autocontidos e faz parte da DartVM fornecida pelo comando dart run.

<h1>Dart: The libraries</h1>

O Dart possui um rico conjunto de bibliotecas, porvendo recursos essenciais para suprir necessidades do dia a dia de um desenvolvedor, sendo as mais importantes:

<h2>Bibliotecas multiplataforma</h2>

Os itens a seguir descrevem uma lista de bibliotecas que podem ser utilizadas em qualquer plataforma Dart:

- [dart:async](https://api.dart.dev/stable/dart-async/dart-async-library.html): Suporte para programação assíncrona, com classes como Future e Stream.<br>
- [dart:collection](https://api.dart.dev/stable/dart-collection/dart-collection-library.html): Classes e utilitários que complementam o suporte de collections em dart:core.<br>
- [dart:convert](https://api.dart.dev/stable/dart-convert/dart-convert-library.html): Codificadores e decodificadores para conversão entre diferentes representações de dados, incluindo JSON e UTF-8.<br>
- [dart:core](https://api.dart.dev/stable/dart-core/dart-core-library.html): Tipos, collections e outras funcionalidades principais incorporadas para cada programa Dart.<br>
- [dart:developer](https://api.dart.dev/stable/dart-developer/dart-developer-library.html): Interação com ferramentas de desenvolvedor como o debugger  e o inspector.<br>
- [dart:math](https://api.dart.dev/stable/dart-math/dart-math-library.html): Constantes matemáticas e funções, além de um gerador de números aleatórios.<br>
- [dart:typed_data](https://api.dart.dev/stable/dart-typed_data/dart-typed_data-library.html): Listas que lidam com eficiência com dados de tamanho fixo (por exemplo, inteiros não assinados de 8 bytes) e tipos numéricos SIMD.

<h2>Bibliotecas para Plataformas Nativas</h2>

Os itens a seguir listam as principais bibliotecas Dart que podem ser utilizadas em plataformas nativas do Dart (código compilado por AOT e JIT).

- [dart:ffi](https://api.dart.dev/stable/dart-ffi/dart-ffi-library.html): Uma interface de função externa que permite que o código Dart use APIs C nativas.<br>
- [dart:io](https://api.dart.dev/stable/dart-io/dart-io-library.html): File, socket, HTTP e outros suportes de I/O para aplicativos não Web.<br>
- [dart:isolate](https://api.dart.dev/stable/dart-isolate/dart-isolate-library.html): Programação concorrente usando isolates: trabalhadores independentes semelhantes a threads.<br>
- [dart:mirrors](https://api.dart.dev/stable/dart-mirrors/dart-mirrors-library.html): Reflexão básica com suporte para introspecção e invocação dinâmica.

<h2>Bibliotecas para Plataformas Web</h2>

Os itens a seguir listam as principais bibliotecas do Dart que que podem ser utilizadas na plataforma da Web Dart (código compilado para JavaScript).

- [dart:html](https://api.dart.dev/stable/dart-html/dart-html-library.html): Elementos HTML e outros recursos para aplicativos baseados na web.<br>
- [dart:indexed_db](https://api.dart.dev/stable/dart-indexed_db/dart-indexed_db-library.html): Armazenamento de chave-valor do lado do cliente com suporte para índices.<br>
- [dart:js_util](https://api.dart.dev/stable/dart-js_util/dart-js_util-library.html): APIs para complementar a funcionalidade ausente no dart:html ou no pacote js.<br>
- [dart:svg](https://api.dart.dev/stable/dart-svg/dart-svg-library.html): Gráficos vetoriais escaláveis.<br>
- [dart:web_audio](https://api.dart.dev/stable/dart-web_audio/dart-web_audio-library.html): Programação de áudio de alta fidelidade no navegador.<br>
- [dart:web_gl](https://api.dart.dev/stable/dart-web_gl/dart-web_gl-library.html): Programação 3D no navegador.

<h2>Características Básicas</h2>

O Dart possui algumas peculiaridades que o diferenciam de outras linguagens populares, tendo a seu dispor uma biblioteca de tipos bastante diversa. No entanto, antes de abordarmos tais especificidades, é importante entender alguns conceitos básicos que devem ser levados durante toda a leitura:

- Em Dart, patricamente tudo é um objeto.<br>
- No Dart é possível inferir tipos a partir dos dados recebidos.<br>
- No Dart é possível tratar a obrigatoriedade da anulação nos tipos de entidades.<br>
<!-- - O Dart suporta tipagem genérica, como List<int>(uma lista de integers) ou List<Object>(uma lista de objetos de qualquer tipo).<br> -->
<!-- - O Dart suporta funções de alto nível(como main()), assim como funções amarradas a classes ou objetos(static e instâncias de métodos, respectivamente). Também é possível criar funções dentro de funções(funções aninhadas ou locais). -->
<!-- - Da mesma forma, o Dart suporta variáveis de alto nível, assim como variáveis amarradas a uma classe ou objeto(static e variáveis instanciadas). Variáveis intanciadas são muitas vezes conhecidas como fields ou propriedades.<br>
- Diferente da linguagem Java, o Dart não possui as palavras-chave public, protected e private. Se um identificador inicia com uma underline(_), ele passa a ser private.<br>
- Identificadores podem iniciar com uma letra ou underline(_), seguida de qualquer combinação de caracteres e dígitos. -->

<h2>Ambiente de Desenvolvimento</h1>

A seguir estão dispostos uma série de passos para a instalação das ferramentas e preparo do ambiente de desenvolvimento. Porém, o Dart já é compatível e interpretado pelos editores mais populares, como o VSCode, que conta com plugins para complementar o ambiente de desenvolvimento. Com isso só é preciso criar uma file com a extenção .dark e executá-la com o comando <b><i>dart run</i></b>:


<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/120421361-844c9e80-c33c-11eb-9507-c10fa62f84f7.png">
</div>


Todos os exemplos aqui descritos podem ser executados de ambas as formas.


<h2>Instalação do Dart-SDK</h1> 


O Dart-SDK é uma biblioteca de ferramentas de linha de comando, comumente utilizada em aplicações Web, Server ou de criação de Script, sendo um ambiente recomendado(não obrigatório) para uso da linguagem.


<h3>Chocolatey</h3>


O Chocolatey é um gerenciador de pacotes para o Windows e necessário no processo de instalação do Dart-SDK. O link a seguir indica o passo a passo pra obter a ferramenta: <i>[Instalar Chocolatey](https://chocolatey.org/install)</i>.

  
Verificar instalação


    choco -v


Instalar Dart-SDK 


    choco install dart-sdk


<h2>App Dart-SDK</h1> 


A partir deste ponto, é possível utilizar o Chocolatey para executar a aplicação Dart-SDK. Sendo assim, acesse um diretório de sua preferância, através do terminal, e execute:


    dart create -t console-full cli


Antes de executar o app criado, é importante ter instalado a extensão recomendada anteriormente. Em seguida, com o ambiente de desenvolvimento devidamente criado, execute os comandos a seguir para fazer o run da aplicação:


    cd cli
    dart run


<h1>Hello World</h1>


Uma forma prática de entender a estrutura mais básica de uma linguagem de programação é o popular Hello World, sendo este executado da seguinte forma no Dart:


    void main() {
      print('Hello World');
    }


Qualquer aplicação dart é inicializada a partir da chamado de um método main, que neste caso, printa o texto declarado dentro da top-level function <i>print()</i>.


<h1>Built-in Types</h1>


Como já foi citado, o dart possui uma tipagem bastante própria, sendo famíliar a linguagens da familia C. A seguir iremos abortar os principais tipos e como estes são utilizados:


<h2>Number</h2>


int - Valores inteiros não maiores que 64 bits, dependendo da plataforma:

    int x = 1;
    int hex = 0xDEADBEEF;
    int exponent = 8e5;

double - Valores decimais:

    double y = 1.1;
    double exponents = 1.42e5;


<h2>String</h2>


Uma string Dart (object String) contém uma sequência de unidades de código UTF-16:

    String s1 = 'Single quotes work well for string literals.';
    String s2 = "Double quotes work just as well.";
    String s3 = 'It\'s easy to escape the string delimiter.';
    String s4 = "It's even easier to use the other delimiter.";


<h2>Interpolação de String</h2> 


A interpolação permite acessar valores identificados por unidades de armazenamento dentro de um string type:

    String greeting = "String";
    String person = "Interpolation";
    String multiLine = '''You can create
    multi-line strings like this one''';
    
    print('${greeting} ${person} and ${multiLine}!');
    
>Output: String Interpolation and You can create<br>
> multi-line strings like this one!

Obs: a interpolação é feita tanto entre aspas simples quanto entre aspas duplas


<h2>Booleans</h2>


Para representar valores boolean o Dart possui o marcador <i>bool</i>, com dois tipos definidos: true e false. Exemplos de definição de um bool:


    // Verifica string vazio

    var fullName = '';
    assert(fullName.isEmpty);

<br>
    
    // Verifica valor menor ou igual a 0

    var hitPoints = 0;
    assert(hitPoints <= 0);

<br>
    
    // Verifica valor null

    var unicorn;
    assert(unicorn == null);

<br>
    
    // Verifica NaN
    
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);


<h2>Runes</h2>


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


<h2>Symbols</h2>


Um objeto Symbol representa um operador ou idetificador declarado em um programa Dart, dificilmente utilizados fora de contextos específicos de desenvolvimento. Para definir um Symbol como identificador usa-se # seguido do identificador:

    #radix
    #bar


<h2>Null</h2>


O Dart possui um recurso chamado de <i>Null Safety</i>, o qual define que as variáveis de um código Dart são non-nullable, ou não anuláveis, a menos que sejam definidas como tal. Declarar uma entidade Dart como nullable define a possibilidade desta ser valorada como ```null``` em algum momento do processo de execução do código que a contém, evitando null exceptions.

Com o Null safety todas as variáveis do código a seguir são non-nullable:

    var i = 42;
    String name = getFileName();
    final b = Foo();

Para indicar que uma variável aceita um nullable usa-se o marcador ```?``` logo após sua a declaração de tipo:

    int? aNullableInt = null;

Para declarar uma variável como no-nullable manualmente, usa-se o marcador ```!``` na delcaração de tipo da unidade:

    int! aNoNullableInt = null;


<h2>Dynamic</h2>


O tipo dynamic define a aceitação de todos os demais tipos em uma variável, dando ao Dart a característica de dinamicidade comum a outras linguagens:

    dynamic nome = "Caio Rolla";
    
    dynamic idade = 22;
    
    print(nome); // Caio Rolla
    
    print(idade); // 22
    
    idade = "22 anos";
    
    print(idade); // 22 anos


<h2>Enumerated types</h2>


Enumerated types, geralmente chamados de <i>enumerations</i> ou <i>enums</i>, são um tipo especial de classe usado para representar um número fixo de valores constantes.

>Nota: Todos os enums estendem automaticamente a classe Enum. Eles também são selados, o que significa que não podem ser subclassificados, >implementados, misturados ou instanciados explicitamente.
>
>Classes abstratas e mixins podem implementar ou estender explicitamente Enum, mas a menos que sejam implementados ou misturados em uma >declaração enum, nenhum objeto pode realmente implementar o tipo dessa classe ou mixin.

Para declarar um tipo enumerado simples, usa-se a palavra-chave ```enum``` e lista-se os valores que serão enumerados:

    enum Color { red, green, blue }


<h1>Operadores Aritméticos</h1>


O Dart suporta os operadores aritméticos usuais encontrados na maior parte das linguagens, porém, conta com algumas adições, como mostrado abaixo:

Operações         | Sinais |  Descrição                                                                    |  Exemplos
----------------- | ------ | ----------------------------------------------------------------------------- | -----------------------------------------------
 Adição           |   +    |  Soma um operando a outro                                                     |  assert(2 + 3 == 5);
 Subtração        |   -    |  Subtrai um operando de outro                                                 |  assert(2 - 3 == -1);
 -expr            |  -expr |  Menos unário, também conhecido como negação (inverter o sinal da expressão)  |  
 Multiplicação    |   *    |  Multiplica um operando por outro                                             |  assert(2 * 3 == 6);
 Divisão          |   /    |  Divide um operando por outro                                                 |  assert(5 / 2 == 2.5); // Resulta em um double
 Divisão Inteirra |   ~/   |  Divide retornando um valor inteiro                                           |  assert(5 ~/ 2 == 2); // Resulta em um int
 Rest             |   %    |  Retorna o resto de um divisão por inteiros                                   |  assert(5 % 2 == 1); // Resto


<h2>Incremento</h2>


O operador de incremento incrementa seu operando em 1, sendo suportado em duas formas: 

<b>Pré Fixado</b> - O resultado de ++ x é o valor de x após a operação, como mostra o exemplo a seguir:

    var a, b;
    
    a = 0;
    b = ++a; 
    assert(a == b);

> 1 == 1

<b>Pós Fixado</b> - O resultado de x ++ é o valor de x antes da operação, como mostra o exemplo a seguir:

    var a, b;

    a = 0;
    b = a++; 
    assert(a != b); 

> 1 != 0


<h2>Decremento</h2>


O operador de decremento diminui seu operando em 1, sendo suportado em duas formas: 

<b>Pré Fixado</b> - O resultado de --x é o valor de x após a operação, como mostra o exemplo a seguir:

    a = 0;
    b = --a; 
    assert(a == b); 

> -1 == -1
    
<b>Pós Fixado</b> - O resultado de x-- é o valor de x antes da operação, como mostra o exemplo a seguir:

    a = 0;
    b = a--; 
    assert(a != b); 

> -1 != 0


<h2>Operadores Relacionais</h2>


Relacionam operandos tendo como retorno um boolean, sendo true caso a operação for verdadeira e false caso seja falsa. Eles são:

<b>Igualdade</b> - Retorna true caso o valor numérico dos operandos seja igual:

    assert(2 == 2); 

> output: true

<b>Diferença</b> - Retorna true caso o valor numérico dos operandos seja diferente:

    assert(3 != 3); 

>output: false 

<b>Maior que</b> - Retorna true caso o valor numérico do operando da esquerda seja maior que o da direita:

    assert(3 > 2); 

> output: true

<b>Menor que</b> - Retorna true caso o valor numérico do operando da esquerda seja menor que o da direita:

     assert(4 < 3); 

> output: false

<b>Maior ou igual</b> - Retorna true caso o valor numérico do operando da esquerda seja maior ou igual ao do operando da direita:

     assert(3 >= 3); 

> output: true

<b>Menor ou igual</b> - Retorna true caso o valor numérico do operando da esquerda seja menor ou igual ao do operando da direita:

     assert(4 <= 3); 

> output: false


<h2>Operadores de Teste</h2>


Os operadores type test definem tipos no processo compilação. Eles são definidos em três:

<b>as</b> - O Typecast é usado para converter um objeto em um tipo específico

    (employee as Person).firstName = 'Bob';

<b>is</b> - Retorna true caso o objeto possua a tipagem especificada

    if (employee is Person) {
      // Type check
      employee.firstName = 'Bob';
    }

<b>is!</b> - Retorna true caso o objeto ão possua a tipagem especificada

    if (employee is! Person) {
      // Type check
      employee.firstName = 'Bob';
    }


<h2>Operadores de Auto Atribuição</h2>

Operações que relacionam dois operandos de forma que o primeiro operando recebe o valor da operação entre seu valor e o de um segundo operando:


     x  =   y | O operando x recebe o operando y
     x  -=  y | O operando x recebe a subtração entre os operandos x e y
     x  /=  y | O operando x recebe a divisão entre os operandos x e y
     x  %=  y | O operando x recebe o resto da divisão entre os operandos x e y
     x  +=  y | O operando x recebe a soma entre os operandos x e y
     x  *=  y | O operando x recebe a multiplicação entre os operandos x e y
     x  ~/= y | O operando x recebe um int da divisão entre os operandos x e y
 

<h2>Operadores Lógicos</h2>


Os operadores lógicos definem um valor boolean como o retorno de uma operação entre dois operandos, sempre retornando true ou false:

<b>Negação</b> - Se o valor chamado data for definido como true, ele passa a ser false, e vice versa. 

    if(!data) {
        ...
    }

<b>Disjução</b> - Chamado de OR lógico, retorna true caso um dos operandos corresponda ao valor boolean true.

    if(!data || value) {
        ...
    }

<b>Conjunção</b> - O operador de conjunção, também chamado de AND lógico define que o resultado de uma operação como true se ambos os operandos forem verdadeiros.

    if(!data && value) {
        ...
    }


<h1>Unidades de Armazenamento</h1>


Assim como em qualquer linguagem de programação, as variáveis em Dart são uma unidade de armazenamento e de referência de dados, tendo aqui algumas características importantes a serem mencionadas.


<h2>Declarando Variáveis</h2>


A variável a seguir é inicializada com a palavra-chave var(reservada para essa função), um identificador e um valor inicial. Esta comtém uma referência ao valor que carrega:


    var data = 'Dart';


A definição do tipo dessa variável é inferida pelo valor que ela carrega, sendo nesse caso um string. Por possuir uma tipagem forte, o Dart permite a definição de tipos de forma implícita e explícita. Sendo a variável acima um exemplo da tipagem explícita. A seguir estão alguns exemplos de variáveis com um tipo pré definido:


    // O tipo Object não possui tipagem restrita, aceitando qualquer tipo

    Object data = 'Dart';

<br>

    // String

    String data = 'Dart';

<br>

    // Double

    Double data = 1.78;

<br>

    // Int

    Int data = 1;

<br>

    // O tipo num define que a variável aceita qualquer valor numérico, seja int ou double

    num pi = 3;
    pi = 3.14;


<h2>Variáveis não Iniciadas</h2>


Uma variável não iniciada é definida por uma unidade de armazenamento e referência cujo espaço na memória não foi ocupado no momendo da declaração, sendo possível ocupa-lo posteriormente:


    int empty;

    empty = 1938;


<h2>Variáveis Late</h2>


O Dart possui, desde a versão 2.12, o modificador <i>Late</i>, que é usado em dois casos: 

- Declaração de variáveis non-nullable que são iniciadas após sua delcaração;
- Lazily initializing de uma variável;

Normalmente o controle de análise de fluxo do Dart detecta quando uma variável é definida com valor non-nullable antes de ser utilizada, mas esse processo nem sempre é eficaz. Isso noramalmente ocorre com variáveis de alto nível e vaiáveis instanciadas.

Caso o desenvolvedor esteja seguro de que a variável foi definida antes de ser usada, tendo a discordância do Dart, é possível corrigir o erro definindo a variável como late. Exemplo:


    late String description;
    
    void main() {
      description = 'Feijoada!';
      print(description);
    }


<h2>Final e Const</h2>


Definir um valor como fixo ou constante demanda o uso da palavra chave <i>final</i> o <i>const</i>, dando à unidade de armazenamento e referência a característica de imutabilidade do seu valor em tempo de compilação:

    final name = 'Bob'; // Sem definição de tipo
    final String nickname = 'Bobby';

Caso uma mudança seja aplicada a uma final, um erro resuultande da ação será lançado:

    name = 'Alice'; // Error: a final variable can only be set once.

Usa-se <i>const</i> em variáveis que pretendem ser contantes em tempo de compilação. Uma const ocupa menos espaço em memória que uma var devido a sua natuuraza imutável.


<h1>Functions</h1>


Por ter uma forte presença da orientação a objetos, mesmo as funções são objetos possuidoras de tipos. Isso torna possível atribuir funções a variáveis ou torná-las argumentos em outras funções. Abaixo segue a estrutura básica de uma função no Dart:


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


Uma função pode ter qualquer número de required positional parameters. Estes ainda podem ser seguidos de named parameters ou por optional positional parameters (mas não ambos):


<h3>Named Parameters</h3>


Named Parameters são opcionais a não ser que sejam definidos como required. Abaixo há a definição da sintaxe de uma função com Named Functions:


    void functionName({type <paramName>, type <paramName>}) {

      ...    
        
    }


Ao instânciar uma função que recebe parâmetros opcionais, usa-se o identificar do parâmetro e o valor a ser passado:


    functionName(paramName: value, paramName: value);


<h3>Required Parameters</h3>


São definados quando o valor recebido via parâmetro é obrigatório, gerando um issue caso não seja disponibilizado:


    type functionName({Key? key, required Widget child})


<h2>A Função main()</h2>


Todas as aplicações devem conter a já mencionada função de alto-nível do tipo main(), cuja função é agir como o entrypoint do app. Retornando void, a função main também possui um parâmetro opcional do tipo List<String> como argumento:


    void main() {
      print('Hello, World!');
    }


<h2>Funções Anônimas</h2>


Boa parte das funções são definidas como named, ou nomeadas, como a própria main(). Uma forma alternativa de criação de funções é omitir seu nome ou identificador, sendo assim chamada de anonymous function, lambda ou closure. 


    ([[Type] param1[, …]]) {

      ...

    };


O exemplo abaixo define uma função anônima com um parâmetro de tipo anônimo. A função, invocada para cada item da lista, printa uma string incluindo o valor no index especificado:


    const list = ['apples', 'bananas', 'oranges'];
    list.forEach((item) {
      print('${list.indexOf(item)}: $item');
    });

Output:

> 0: apples<br>
> 1: bananas<br>
> 2: oranges


<h2>Lexical scope</h2>


O Dart é uma linguagem com escopo léxico, o que significa que o escopo das variáveis é determinado estaticamente, seguindo o layout do código escrito. Basicamente, as variáveis declaradas anteriormente, ou dentro das chaves de uma estrutura de código, são definidas como parte do escopo:


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


<h1>Declarações de Controle de Fluxo</h1>


O controle do fluxo de dados é, em suma, um dos aspectos mais importantes da programação. O Dart possui as seguintes estruturas para controle de fluxo de informações:


<h2>If-else</h2>


    if ( booleanExpression ) {
      
      ...
      
    } else if ( anotherBooleanExpression ) {
      
      ...


    } else {
      
      ...

    }


<h2>Exepressões Condicionais</h2>


Além dos expressões padrão if-else o Dart conta com dois operadores lógicos que exercem a mesma função, substituindo-as em determinadas situações:


<h3>condition ? expr1 : expr2</h3>


Se condition tiver true como valor, o valor de expr1 é retornado, de outra forma, o valor de expr2 é retornado:


    var visibility = isPublic ? 'public' : 'private';


<h3>expr1 ?? expr2</h3>


O valor de expr1 é retornado caso ele seja diferente de null, de outra forma, o valor de expr2 é retornado:


    String playerName(String? name) => name ?? 'Guest';


<h2>For Loops</h2>


    var message = StringBuffer('Dart is fun');
    for (var i = 0; i < 5; i++) {
      message.write('!');
    }


Os fechamentos dentro dos loops for do DART capturam o valor do índice, evitando uma armadilha comum encontrada no JavaScript:


    var callbacks = [];
    for (var i = 0; i < 2; i++) {
      callbacks.add(() => print(i));
    }
    callbacks.forEach((c) => c());


O output seria 0 e depois 1, como esperado. Em contraste, se o exemplo fosse feito em JavaScript, o retorno seria 2 e depois 2.


<h3>For-in</h3>


Se o objeto de interação for um iterable(como um List ou Set), e se não é preciso saber o contador de interação atual, é possível utilizar o for-in:


    for (var varName in iterable) {
      
      ...

    } 


<h2>While e do-while</h2>


Um loop while avalia a condição antes do loop:


    while (booleanExpression) {

      ...

    }


Um do-while avalia a condição depois do loop:


    do {
      
      ...

    } while (booleanExpression);


<h2>Break e continue</h2>


O <b><i>break</i></b> é utilizado para quebrar um loop em execução quando o valor definido em uma condicional é encrontrado:


    while (true) {
      if (booleanExpression) break;
      
      ...

    }


O <b><i>continue</i></b> é utilizado para pular para o próximo loop quando o valor definido em uma condicional é encrontrado:


    for (int i = 0; i < candidates.length; i++) {
      var candidate = candidates[i];
      if (booleanExpression) {

        continue;

      }
      candidate.interview();


<h2>Switch-case</h2>


O Switch no Dart compara integers, strings ou constantes de tempo de compilação usando o operador de igualdade(==). Todos os objetos comparados devem ser instâncias da mesma classe(e não de qualquer um de seus subtipos), e a classe não pode sobrepor o operador. 

Qualquer uma das clausulas <b><i>case non-empty</i></b> têm como regra terminar com um <b><i>break</i></b>. Outros meios válidos para termiar um non-empty case é usando o <b><i>continue</i></b>, o <b><i>throw</i></b> ou um <b><i>return</i></b>.

Caso nenhum case combine com o valor de comparação, é executada uma clausula <b><i>default</i></b>:


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


O Catch captura uma exceção e impede que ela se propague, a menos que ela seja relançada. Capturar essa exceção permite que ela seja tratada:


    try {
      
      ...

    } on Exception {
     
      ...
     
    }


Para tratar um código que pode lançar mais de um tipo de exceção, é possível especificar múltiplas clausulas catch. A primeira clausula que combinar com o tipo de objeto lançado trata a exceção. Se a clausula catch não especificar um tipo, qualquer objeto lançado pode ser tratado por ela:


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


<h2>Finally</h2>


Para garantir que o trecho de código será executado mesmo se uma exceção for lançada, usa-se a clausula finally. Se a exceção não combinar com a nenhum dos cases, a exceção é propagada depois que a clausula finilly for executada:


    try {
      
      ...

    } finally {

      // Sempre ocorre, mesmo se uma exceção for lançada
      
      ...

    }
    

<h1>Collections</h1>

Collections são implementações de estruturas de dados, normalmente associadas ao armazenamento de informações. Cada collection possui um tipo associado e define um tipo, sendo possível agrupa-los gerando collections que armazenam collections, por exemplo. O Dart possui as collections a seguir:


<h2>List</h2>


A definição para uma List é uma coleção indexável de objetos com um length, basicamente um Array, cujos principais tipos são:

- Lists de Comprimentos Fixos;
- Lists de Comprimento Cultivaveis ou de Tamanho não Fixo;

Um array, vetor ou variável composta em Dart é definido como uma lista de objetos, portanto, recebendo da linguagem o identificador <b><i>List</i></b>, que pode agrupar basicamente qualquer built-in type do Dart. Há formas distintas de declarar um List em Dart:


    // Sem definição de tipo

    List numbers = [1, 2, 3];

<br>

    // Com definição de tipo

    List <num> numbers = [1, 2, 3];

    List<int> numbers = [1, 2, 3];

    List<String> names = ["Victor", "Carla", "Pedro"];

<br>

    // List de collections

    List<Map> employees = [

      {'Nome': 'Victor Santos', 'idade': 20, 'Profissao': 'Dev'},
      {'Nome': 'Felipe Maia', 'idade': 38, 'Profissao': 'Líder Técnico'},
      {'Nome': 'Luana Martins', 'idade': 21, 'Profissao': 'UI/UX Designer'}

    ];

<br>

    // List de Objetos

    class Product {
      String nome;
      double preco;
    
      Products(this.nome, this.preco);
    }
    
    List<Product> listaDeCompras = [
      Product("Feijão", 7.80),
      Product("Arroz", 4.50),
      Product("Macarrão", 3.45),
      Product("Frango", 8.90)
    ];


<h2>Spread Operator</h2>


O Spread define uma associação entre lists, tendo como resultado um liste apenas. O length dessa associação é equivalente aos indices de ambas as listas somados:


    List name = ['Victor'];
    List names = ['Maria', 'Marcos', ...name];

    void main() {

      print(names.length); // Spread Operator

    }

OutPut: 

>3


<h2>Trantando Lists</h2>


Assim como em boa parte das linguagens que tratam de vetores, o dart conta com uma série de métodos e atributos para tratar essas estruturas. Abaixo estão listados alguns dos quais se relacionam com o tipos de list:


<h2>Constructors</h2>


Estruturas de criação de uma List com diferentes restrições:

|        Constructor                                      |                                   Descrição                                     |
| ------------------------------------------------------- | ------------------------------------------------------------------------------- |
|  List[ type length ]                                    |  Cria um List de comprimento definido                                           | 
|  List.empty()                                           |  Cria uma nova lista vazia de tamanho fixo                                       |
|  List.filled( type length value )                       |  Cria um List de tamanho fixo com comprimento definido e preenche cada posição  |
|  List.from( iterables elements )                        |  Cria um List de tamanho cultivável contendo todos os elements                  |
|  List.generate( type length, E generator(type index) )  |  Gera uma lista de tamanho cultivável com valores                               |
|  List.of( iterable <E> elements )                       |  Cria um List de tamanho cultivável a partir de elements                        |
|  List.unmodifiable( iterable elements )                 |  Cria um List inalterável contendo todos os elements                            |


<h2>Properties</h2>


Atributos de consulta das lists:

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
 

<h2>Methods</h2>

Métodos de execução de uma List:

|                Methods                  |                                          Descrição                                               |
| --------------------------------------- |  ----------------------------------------------------------------------------------------------- |
|  add(value)                             |   Adiciona um valor ao final da List, extendendo o tamanho em 1                                  | 
|  addAll(Interable)                      |   Adiciona todos os objetos de um interable ao fim de uma list, extendendo seu tamanho           |
|  any(bool test(element))                |   Verifica se algum elemento deste iterável satisfaz o test                                      |
|  asMap()                                |   Exibe um Map não modificável desta lista                                                       |
|  cast R -> List R                       |   Retorna uma exibição da list como uma lista de instâncias R                                    |
|  clear()                                |   Remove todos os objetos da list; o comprimento da lista torna-se zero                          |
|  contains(Object? element)              |   Verifica se a collection possui um elemento igual a element                                    |
|  elementAt(int index)                   |   Retorna o elemento no index                                                                    |
|  every(bool test(element))              |   Verifica se cada elemento da List satisfaz test                                                |
|  expand()                               |   Expande cada elemento da List em zero ou mais elementos                                        |
|  fillRange(start, end, fillValue)       |   Substitui um intervalo de elementos por fillValue                                              |
|  firstWhere(bool test)                  |   Retorna o primeiro elemento que satisfaz test                                                  |
|  fold(T initialValue, T combine)        |   Reduz uma collection a um único valor combinando seus elementos com um valor existente         |
|  followedBy(Iterable other)             |   Retorna a concatenação lenta da List e de other                                                |
|  forEach(void action(E element))        |   Invoca a action em cada elemento deste iterable em ordem de iteração                           |
|  getRange(int start, int end)           |   Cria um Iterable que itera em um intervalo de elementos                                        |
|  indexOf(E element)                     |   Retorna o primeiro index de element nesta lista                                                |
|  indexWhere(bool test(element))         |   Tetorna o primeiro index na lista que satisfaz o test fornecido                                |
|  insert(int index, E element)           |   Insere element na posição de index na lista                                                    |
|  insertAll(int index, iterable)         |   Insere todos os elementos de iterable na posição de index nesta lista                          |
|  join([String separator = ""])          |   Converte cada elemento da lsita em uma String e os concatena                                   |
|  lastIndex(E element)                   |   Identifica o último index de element nesta lista                                               |
|  lastIndexWhere(bool test)              |   Retorna o último index na lista que satisfaz o teste fornecido                                 |
|  lastWhere(bool test(element))          |   Retorna o último elemento que satisfaz o teste de predicado fornecido                          |
|  map(T toElement())                     |   Retorna os elementos atuais da lista modificados por toElement                                 |
|  noSuchMethod(invocation)               |   Invocado quando um método ou propriedade inexistente é acessado                                |
|  reduce(E combine())                    |   Reduz uma collection a um único valor combinando seus elementos usando a função fornecida      |
|  remove(Object? value)                  |   Remove a primeira ocorrência de value desta lista                                              |
|  removeAt(int index)                    |   Remove o objeto na posição de index desta lista                                                |
|  removeLast()                           |   Remove e retorna o último objeto na lista                                                      |
|  removeRange(start, end)                |   Remove um intervalo de elementos da lista                                                      |
|  removeWhere(bool test(element))        |   Remove todos os objetos da lista que satisfazem test                                           |
|  replaceRange(start, end, replacement)  |   Substitui um intervalo de elementos pelos elementos de replacement                             |
|  retainWhere(bool test(element))        |   Remove todos os objetos da lista que não satisfazem test                                       |
|  setAll(index, iterable)                |   Substitui elementos com os objetos de iterable                                                 |
|  setRange(start, end, iterable)         |   Grava elementos de iterable em um intervalo da lista                                           |
|  shuffle()                              |   Embaralha os elementos da lista aleatoriamente                                                 |
|  singleWhere(bool test(element))        |   Retorna o único elemento que satisfaz test                                                     |
|  skip(int count)                        |   Retorna um Iterable que fornece todos os elementos exceto o primeiro count                     |
|  skipWhile(bool test(value)             |   Retorna um Iterable que ignora os elementos principais enquanto test for satisfeito            |
|  sort([compare(a, b)?])                 |   Classifica a lista de acordo com a ordem especificada pela função compare                      |
|  sublist(int start, [int? end])         |   Retorna uma nova lista contendo os elementos entre start e end                                 |
|  take(int count)                        |   Retorna um iterable lento dos primeiros elementos de count da lista                            |
|  takeWhile(bool test(value))            |   Retorna um iterable lento dos principais elementos que satisfazem o test                       |
|  toList()                               |   Cria uma outra lista contendo os elementos da lista                                            |
|  toSet()                                |   Cria um Set contendo os mesmos elementos que a lista                                           |
|  toString()                             |   Retorna uma representação de string deste objeto                                               |
|  where(bool test(element))              |   Retorna um novo Iterable lento com todos os elementos que satisfazem test                      |
|  whereType T () -> Iterable T           |   Retorna um novo Iterable lento com todos os elementos que possuem o tipo T                     |


<h2>Map</h2>


Em geral um map é um objeto que associa chaves e valores, ambos podendo ser de qualquer tipo. Bastente parecido com um List, o Map possui a propriedade de ter indices customizaveis únicos, o que os diferencia. A seguir há exemplos de declarações de Maps:


    var movies = {

    // Chave: Valor
    
      'first': 'The GodFather',
      'second': 'Good Fellas',
      'third': 'The Irishman'
    };
    
    var characters = {
      1: 'Vito Corleone',
      2: 'Jimmy Conway',
      3: 'Frank Sheeran',
    };
    
    void main() {
      print(movies['first']);
      print(characters[1]);
    }

OutPut:

>The GodFather<br>
>Vito Corleone


<h2>Constructors</h2>


Estruturas de criação de Maps com diferentes restrições:

|        Constructor                   |                                   Descrição                                                  |
| ------------------------------------ | -------------------------------------------------------------------------------------------- |
|  Map()                               |  Cria um LinkedHashMap vazio                                                                 | 
|  Map.from(Map other)                 |  Cria um LinkedHashMap com as mesmas chavez e valores que other                              |
|  Map.fromEntries(Iterable entries)   |  Cria um novo Map e adiciona entries a ele                                                   |
|  Map.fromIterable(iterable, {})      |  Cria a instância de Map na qual as chaves e os valores são calculados a partir de iterable  |
|  Map.fromIterables(keys, Iterable)   |  Cria um Map associando as chaves fornecidas aos valores fornecidos                          |
|  Map.identity()                      |  Cria um mapa de identidade com a implementação padrão, LinkedHashMap                        |
|  Map.of(Map<K, V> other)             |  Cria um LinkedHashMap com as mesmas chaves e valores que other                              |
|  Map.unmodifiable(Map other)         |  Cria um Map baseado em hash não modificável contendo as entradas de other                   |


<h2>Properties</h2>


Atributos de consulta de um Map:

|       Proprieties       |                                 Descrição                                       |
| ----------------------  | ------------------------------------------------------------------------------- |
|  .entries -> Iterable   |  Retorna as entries presentes no Map                                            | 
|  .hashCode              |  Retorna um intenger que representa o código hash para o objeto Map em questão  |
|  .isEmpty               |  Retorna true caso não haja pares de chave/valor no Map                         |
|  .isNotEmpty            |  Retorna true caso haja pelo menos um par de chave/valor no Map                 |
|  .keys                  |  Retorna as keys do Map                                                         |
|  .length                |  Retorna um intenger que representa o número de pares de chave/valor no Map     |
|  .runtimeType           |  Retorna uma representação do de tipo de runtime do objeto                      |
|  .values -> Iterable    |  Retorna os valores presentes no Map                                            |
 

<h2>Methods</h2>

Métodos de execução de um Map:

|                Methods                  |                                          Descrição                                  |
| --------------------------------------- |  ---------------------------------------------------------------------------------- |
|  addAll(Map other)                      |   Adiciona todos os pares de chave/valor de other ao Map                            | 
|  addEntries(Interable newEntries)       |   Adiciona todos os pares de chave/valor de newEntries ao Map                       |
|  cast RK, RV () -> cast RK, RV ()       |   Fornece uma visão do Map como tendo chaves RK e instâncias RV, se necessário      |
|  clear()                                |   Remove todas as entries do Map                                                    |
|  containsKey(Object? key)               |   Retorna true caso o Map contenha a chave fornecida                                |
|  containsValue(Object? value)           |   Retorna true caso o Map contenha o valor fornecido                                |
|  forEach(void action(K key, V value))   |   Aplica action a cada par de chave/valor do Map                                    |
|  map()                                  |   Retorna em um novo Map todas as entries do Map transformadas pela função convert  |
|  noSuchMethod(invocation)               |   Invocado quando um método ou propriedade inexistente é acessado                   |
|  putIfAbsent(K key, V ifAbsent())       |   Procura o valor de uma chave ou adiciona uma nova entrie caso esta não exista     |
|  remove(Object? key)                    |   Remove do Map chave e valor associado, se presente                                |
|  removeWhere(bool test(key, value))     |   Remove todas as entries do Map que satisfazem o test                              |
|  toString()                             |   Retorna uma representação de string deste objeto                                  |
|  update(K key, V update(V value), {})   |   Atualiza o valor da chave fornecida                                               |
|  updateAll(V update(K key, V value))    |   Atualiza todos os valores                                                         |



<h2>Set</h2>


Um set é uma coleção não ordenada de itens únicos, semelhante a um array ou objeto, com métodos e atributos próprios. Estes usados para adicionar, excluir e alterar elementos. A seguir há exemplos de declarações do Set type:
    
    
    //Set vazio

    Set<String> names = {}; 
    var names = <String>{};

    //Set preenchido

    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};


<h2>Constructors</h2>


Estruturas de criação de Sets com diferentes restrições:

|        Constructor                     |                     Descrição                        |
| -------------------------------------- | ---------------------------------------------------- |
|  Set()                                 |  Cria um Set vazio                                   | 
|  Set.from(iterable elements)           |  Cria um Set contento todo os elementos de elements  |
|  Set.identity()                        |  Cria um Set de identidades vazio                    |
|  Set.of(iterables elements)            |  Cria um Set a partir de elements                    |
|  List.unmodifiable(iterable elements)  |  Cria um Set não modificável a partir de elements    |


<h2>Properties</h2>


Atributos de consulta de Sets:

|       Proprieties      |                                   Descrição                                      |
| ---------------------- | -------------------------------------------------------------------------------- |
|  .first                |  Retorna o primeiro elemento                                                     | 
|  .hashCode             |  Retorna um intenger que representa o código hash para o objeto Set em questão   |
|  .isEmpty              |  Retorna um boolean true se não houver elementos nesta conllection               |
|  .isNotEmpty           |  Retorna um boolean true se houver amenos um elemento do collection              |
|  .iterator             |  Retorna um novo Iterator que permite iterar os elementos do Iterable            |
|  .last                 |  Retorna o último elemento                                                       |
|  .length               |  Retorna um intenger que representa o número de objetos no Set                   |
|  .runtimeType          |  Um Iterable do objeto List na ordem reversa                                     |
|  .single               |  Verifica se há apenas um elemento no Iterable e retorna esse elemento           |
 

<h2>Methods</h2>

Métodos de execução de Sets:

|                Methods            |                                          Descrição                                           |
| --------------------------------- |  ------------------------------------------------------------------------------------------- |
|  add(value)                       |   Adiciona um valor ao final do Ser, extendendo o tamanho em 1                               | 
|  addAll(interable)                |   Adiciona todos os objetos de interable ao fim do Set, extendendo seu tamanho               |
|  any(bool test(element))          |   Verifica se algum elemento deste Iterable satisfaz o test                                  |
|  asMap()                          |   Exibe um Map não modificável desta lista                                                   |
|  cast R -> List R                 |   Retorna uma exibição do Set como uma conjuto de instâncias R                               |
|  clear()                          |   Remove todos os objetos do Set; o comprimento do Set torna-se zero                         |
|  contains(Object? value)          |   Verifica se a collection possui um elemento igual a value                                  |
|  containsAll(Iterable other)      |   Retorna true caso a collection possua todo os elementos contidos em other                  |
|  difference(Set other)            |   Cria um novo Set com os elementos do Set que não constam em other                          |
|  elementAt(int index)             |   Retorna o elemento no index                                                                |
|  every(bool test(element))        |   Verifica se cada elemento do Set satisfaz test                                             |
|  expand()                         |   Expande cada elemento da List em zero ou mais elementos                                    |
|  firstWhere(bool test)            |   Retorna o primeiro elemento que satisfaz test                                              |
|  fold(T initialValue, T combine)  |   Reduz uma collection a um único valor combinando seus elementos com um valor existente     |
|  followedBy(Iterable other)       |   Retorna a concatenação lenta do Set e de other                                             |
|  forEach(void action(E element))  |   Invoca a action em cada elemento do Set em ordem de iteração                               |
|  intersection(Set other)          |   Cria um novo Set a partir da interseção com other                                          |
|  join([String separator = ""])    |   Converte cada elemento da lsita em uma String e os concatena                               |
|  lastWhere(bool test(element))    |   Retorna o último elemento que satisfaz o teste de predicado fornecido                      |
|  map(T toElement())               |   Retorna os elementos atuais do Set modificados por toElement                               |
|  noSuchMethod(invocation)         |   Invocado quando um método ou propriedade inexistente é acessado                            |
|  reduce(E combine())              |   Reduz uma collection a um único valor combinando seus elementos usando a função fornecida  |
|  remove(Object? value)            |   Remove a primeira ocorrência de value do Set                                               |
|  removeAll(Iterable elements)     |   Remove cada elemento presente em elements do Set                                           |
|  removeWhere(bool test(element))  |   Remove todos os elementos do Set que satisfazem test                                       |
|  retainAll(Iterable elements)     |   Remove todos os elementos do Set que não estão presentes em elements                       |
|  retainWhere(Iterable elements)   |   Remove todos os elementos do Set que não satisfazem test                                   |
|  singleWhere(bool test(element))  |   Retorna o único elemento que satisfaz test                                                 |
|  skip(int count)                  |   Retorna um Iterable que fornece todos os elementos exceto o primeiro count                 |
|  skipWhile(bool test(value)       |   Retorna um Iterable que ignora os elementos principais enquanto test for satisfeito        |
|  take(int count)                  |   Retorna um iterable lento dos primeiros elementos de count do Set                          |
|  takeWhile(bool test(value))      |   Retorna um iterable lento dos principais elementos que satisfazem o test                   |
|  toList()                         |   Cria uma lista contendo os elementos do Set                                                |
|  toSet()                          |   Cria um Set contendo os mesmos elementos e comportamentp que o Set                         |
|  toString()                       |   Retorna uma representação de string deste objeto                                           |
|  where(bool test(element))        |   Retorna um novo Iterable lento com todos os elementos que satisfazem test                  |
|  whereType T () -> Iterable T     |   Retorna um novo Iterable lento com todos os elementos que possuem o tipo T                 |


<h1>Dart Orientado a Objetos</h1>


Por ser uma linguagem orintada a objetos, o Dart conta com todos os recursos padrões do paradigma, como Classes, Constructors, herança baseada em hierarquia, além de muitos outros conceitos. A seguir iremos entender como aplicar os conceitos da POO com o Dart.


<h2>Classes</h2>


Sendo uma classe a matriz de criação de um objeto, pode-se dizer que os objetos possuem membros, sendo estes os métodos ou funções, e os dados ou atributos que a classe permite. A declaração de uma classe no Dart se dá pelo modelo a seguir:


    class ClasseName {
      
     //Attributes

     ...

     //Methods
     
     ...
    
    }


Ao definir uma classe e seus membros, é possível utilizá-la como a definição de tipo de um novo objeto. Com isso, os atributos e métodos da classe são herdados por esse objeto. Para gerar um objeto com base em determinada classe no Dart, se faz uso do identificador dessa classe seguido de um identificar para o objeto em si. E, opcionalmente, usa-se a keyword <b><i>new</i></b>, sendo seguida do tipo recebido pelo objto, este sendo obrigatório:


    class ClasseName {

      //Attributes

      String identifire;

      //Methods

      ...

    }

    ClassName objectName = <new> ClassName();
    objectName.identifire = 'Some data';


Um padrão da orintação a objetos em muitas linguagens de programação é a herança por instanciação, ou uso do ponto para acessar membros da classe, esta sendo usada como matriz de criação do objeto. Este recurso é usado acima de forma bastante simples, onde o objeto(objectName) herda o atributo(identifire) da classe(ClassName). O mesmo conceito pode ser aplicado a um método ou subclasse, mas não a um constructor.


<h2>Membros de Uma Classe</h2>


Os membros de uma classe são os já citados métodos e atributos, respectivamente responsáveis por definir o comportamento dos objetos criados, armazenar e referênciar os atributos dos mesmos, ou mais específicamente dos dados correspondentes aos atributos desses objetos. Estes possuem um nível de acesso distinto de métodos ou variáveis que não compõem o escopo de uma classe. Diferente do padrão de instanciação, dentro de uma classe um membro só pode ser instanciado se este estiver dentro do escopo, sendo precedido da keyword <b><i>this</i></b>. A keyword this define que um membro da própria classe é quem está sofrendo a instância:


    class ClasseName {

      //Attributes

      String identifire;

      //Methods

      void classMethod() {

      this.anotherClassMethod();

      }

      void anotherClassMethod() {

        this.identifire = 'text';

      }

    }


<h2>Métodos e Atributos Estáticos</h2>


Para fazer uso de um membro de uma classe é preciso, antes de mais nada, criar uma instância da classe a qual ele pertence. Isso se o membro em questão for definido como não estático. Um atributo ou método estático, precedido da palavra-chave <strong>static</strong>, descarta a necessidade de uma instanciação da classe de origem. Exemplo:


    class ClassName {
    
    static String identifire = 'Static';
    static method() {
      print('Modifier');
    }

    }
    
    void main() {
    
      print(ClassName.identifire);
      ClassName.method();
    }
    
OutPut:
    
>Static<br>
>Modifier


<div align="center">
 Com a definição de tipo static, a única referência necessária é ao nome da classe.
</div>


<h2>Final</h2>


O modificador final define um valor fixo para determinada unidade de código, não permitindo a redefinição desse valor após sua declaração. Tomando como exemplo um atributo de uma classe, pode-se definir que o modificador final age da seguinte forma:


    class Filme {
      final String title = 'O Poderoso Chafão II';
    }
    
    void main() {
      final Filme filme = new Filme();
      filme.title = 'O Poderoso Chafão III'; //Erro
    
    }

Erro:

>"'title' can't be used as a setter because it's final.<br>
>Try finding a different setter, or making 'title' non-final."


O final é utilizado como mecanismo de alerta ao desenvolvedor, definindo que o valor correspondente a um final é imutável, sendo o valor final daquela unidade de código.


<h2>Usando Constructors</h2>


Um constructor é definido por inicializar um objeto no processo de criação do mesmo, definindo valores, carregando informações que possuem devida importancia, etc. Um constructor também é definido como o primeiro método a ser chamado quando uma classe é instanciada, não sendo obrigatoriamente necessário criá-lo, já que, por padrão, classes já possuem um constructor mesmo que ele não seja definido. Um constructor possui o ClasseName como seu identificador:


    class ClasseName {

      ClassName() { }

    }

    ClassName objectName = <new> ClassName();


<h2>Exemplo de Uso de Um Constructors</h2>


    class Usuarios {
    
      var usuario;
      var password;
    
      Usuarios(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
      }

      // Usuarios(this.usuario, this.password)

      authentication() {
        if (this.usuario == usuario && this.password == password) {
          return true;
        } else {
          return false;
        }
      }
    }
    
    void main() {
      Usuarios auth = new Usuarios('Victor', '123456');
    
      if (auth.authentication()) {
        print('Usuário Autenticado');
      } else {
        print('Usuário não Autenticado');
      }
    }


No exemplo acima o cronstructor recebe via parâmetro os valores correspondentes a senha e ao nome do usuário em uma tela de login. Aqui os valores só são passados dessa maneira com o propósito explicativo. Perceba que os valores citados são passados no momento em que o objeto é criado, ou seja, no momento em que um constructor é definido, a declaração de um objeto passa a referencia-lo e não mais à classe.


<h2>Named Constructor</h2>


Um named constructor é uma definição de identificador para o constructor de uma class, não possuindo diferenças diretas na sua função ou forma de execução, normalmente utilizado quando uma classe precisa de múltiplos constructors. Exemplo:


    class ClassName {

      ClassName.ConstructorName() { }

    }


<h2>Getter e Setter</h2>


O Dart, assim como muitas linguagens de programação modernas possui um recurso de nivelamento de acesso, podendo restringir o contato entre partes do código, deixando o mesmo mais seguro. Uma dessas restrições é tornar um atributo privado, só permitindo seu acesso no escopo da classe que o contém. O getter e o setter executam respectivamente as funções de obter e configurar essas partes, permitindo seu acesso de forma segura:


    class ClassName {

      String _attributeName // Atributo privado
    
      // Getter

      Type get attribute {
        return _attributeName;
      }
      
      // Type get atribute => _attributeName;

      set attributeName(type attributeName) {

      }

    }


Com isso é possível acessar o atributo <b><i>_attributeName</i></b> por meio da variável get, que assume para si o papel de referenciar o atributo privado. E por sua vez, o set configura o que acontece com o atributo em questão, gerando um processo de validação para o mesmo. A seguir há um exemplo mais detalhado:


    class Conta {

     double saldo = 100;
     double _saque = 0;
  
    // Getter
  
    double get saque {
      return _saque;
    }
  
    // Setter
  
    set saque(double saque) {
      if (saque <= 500 || saque < saldo) {
        this.saldo = saldo - saque;
        print('\n Valor sacado: $saque\n');
        print(' -------------------\n');
        print(' Saldo atual:  $saldo');
      } else {
        print('O valor máximo de saque é 500');
      }
    }

    }
    
    void main() {
      Conta conta = Conta();
      conta.saque = 10;
    }


O exemplo acima usa os conceitos de Getter e Setter para simular um saque em uma conta bancária, tendo como private o valor a ser sacado. Este passa a ser acessível através de um get, sendo posteriormente configurado através de um set. A seguir temos o resultado do exemplo acima:


>Valor sacado: 10.0
>
>-------------------
>
>Saldo atual:  90.0


<h2>Herança</h2>


A herança é um dos pilares da orientação a objetos. Desenvolver visando o reaproveitamento de código é extremamente recomendado no contexo da OOP, e o Dart possui seu meio para tornar isso possível. Com isso, tendo em mente como as classes são criadas e cosumidas para criar objetos, a seguir veremos como classes filhas podem herdar membros de classes pais aplicando o conseito de herança:


<h2>Extends</h2>


O extends cria uma relação entre duas classes distintas, sendo uma chamada de SuperClasse(doadora), e outra chamada de subClasse(herdeira):


    class SuperClasse {
    
      ...
    
    }
    
    class SubClasse extends SuperClasse {
    
      ...
      
    }


Isso estabelece que cada método ou atributo definido como parte da SuperClasse será herdado pela subClasse. A seguir há um exemplo mais detalhado da herança entre classes:


    class Parent {
      String name = 'Vito';
      String surname = 'Corleone';
    }
    
    class Child extends Parent {
      String name = 'Michael';
    }
    
    void main() {
      Child child = new Child();
      print('${child.name} ${child.surname}');
    }


OutPut:

>Michael Corleone


Perceba que mesmo sendo uma classe herdeira, a subClasse possui um atributo próprio. Isso permite criar um maior nível de abstração e aproveitamento de um código já criado, não sendo necessário criar os mesmos atributos em classe relacionadas.


<h2>@override</h2>


O @override é um recurso ligado diretamente com classes e a herança de seus membros por outras classes. Com o processo de desenvolvimento de um código há uma série de problemas que surgem, como repetição de identificadores por exemplo, ou a redefinição de um método específico. O @override é responsável por sobrescrever um método, definindo uma nova função para o mesmo. Exemplo:


    class SuperClasse {
      void method() {
        print('Something');
      }
    }
    
    class SubClasse extends SuperClasse {
      @override
      void method() {
        print('Something new');
      }
    }


Quando a subClasse for intanciada, o método herdado será sobrescrito pelo método precedido do @override. A seguir há um exemplo mais detalhado da @override de um método herdado:


    class Food {
      definition() {
        print('Something edible');
      }
    }
    
    class Apple extends Food {
      @override
      definition() {
        print('A fruit');
      }
    }

    void main() {
      Apple apple = new Apple();
      apple.definition();
    }

OutPut:

>A fruit


<h2>super.method()</h2>


Em contraponto ao @override, o super é utilizado para tornar acessível um método sobrescrito de uma SuperClasse, tendo o mesmo princípio, porém, aplicado de forma invertida. Exemplo:


    class SuperClasse {
      void method() {
        print('Something');
      }
    }
    
    class SubClasse extends SuperClasse {
      @override
      void method() {
        super.method();
        print('Something new');
      }
    }


Um <b><i>super</i></b> deve ser declarado dentro de um membro da classe herdeira, específicamente em um método. A seguir há um exemplo mais detalhado do uso do super:


    class Food {
      definition() {
        print('Something edible');
      }
    }
    
    class Apple extends Food {
      @override
      definition() {
        super.definition();
        print('A fruit');
      }
    }
    
    class HotDog extends Food {
      @override
      definition() {
        print('A fastfood');
      }
    }
    
    void main() {
      Apple apple = new Apple();
      apple.definition();
      HotDog hotDog = new HotDog();
      hotDog.definition();
    }

OutPut:

>Something edible<br>
>A fruit<br>
>A fastfood


<h2>constructor() : super()</h2>


O super também pode definir uma relação entre classes atráves dos constructors, definindo a passagem de dados de uma subClasse para uma SuperClasse. Exemplo:


    class Pizza {
      String sabor;
    
      Pizza(this.sabor);

      definition() {
        print(this.sabor);
      }
    }
    
    class Margherita extends Pizza {
      String sabor;
    
      Margherita(this.sabor) : super(sabor);

    }
    
    void main() {
      Margherita margherita = new Margherita('Margherita');
      margherita.definition();
    }

OutPut:

>Margherita


Isso se dá quando uma subClasse é instanciada tendo um valor recebito em seu constructor, sendo necessário ter este mesmo valor na SuperClasse. No caso acima essa informação é o sabor da pizza criada.


<h2>Classes Abstratas</h2>


Uma classe abstrata é precedida do modificador abstract, este impede a instanciação de membros e da própria classe. Observe um exemplo estrutural de classe abstrata:

 
    abstract class ClassName {
 
      String identifire;
 
      void method() {
 
        ...
        
      }
 
    }


Um detalhe importante sobre classes abstratas é que seus membros também passam a ser abstratos. Um método abstrato, diferente de um método concreto, quando declarado, depende de um @override para poder ser mantido. Do contrario é gerado um erro exigindo que o método seja sobrescrito:


    abstract class Lapis {
      void escrever();
    }
    
    class Caneta extends Lapis { //Erro
    
    }

    //Erro

    "Missing concrete implementation of 'Lapis.escrever'.
    Try implementing the missing method, or make the class"


Perceba que um método abstrato pode ser declarado sem corpo. Isso ocorre graças a natureza abstrata do mesmo, pois ele sempre vai sofrer um @override. 


<h2>Corrigindo o Erro</h2>


    abstract class Lapis {
      void escrever();
    }
    
    class Caneta extends Lapis {
      @override
      void escrever() {
        print('Texto');
      }
    }
    
    void main() {
      Caneta caneta = new Caneta();
      caneta.escrever();
    }
  
OutPut:

>Texto


<h2>Interfaces</h2>


Um interface por definição é uma SuperClasse abstrata cujos membros só são herdados por subClasses concretas que os implementem; como um contrato que deve ter seus termos aceitos após a assinatura. Os métodos ou atributos de uma interface devem sofrer um @override na subClasse que os implementa, do contrário não podem ser utilizados. Para uma melhor definição observe:

   
    abstract class Machine {
      write();
      read();
    }
    
    class SoftwareEngineer implements Machine {
      @override
      write() {
        print('Dart');
      }
    
      @override
      read() {
        print('Machine Code');
      }
    }
    
    class DataAnalyst implements Machine {
      @override
      write() {
        print('Pyton');
      }
    
      @override
      read() {
        print('Machine Code');
      }
    }
    
    void main() {
      SoftwareEngineer softwareEngineer = new SoftwareEngineer();
      softwareEngineer.write();
      DataAnalyst dataAnalyst = new DataAnalyst();
      dataAnalyst.write();
    }


Perceba que não há uma relação direta de herança entre as classes, o que ocorre é a implementação de um modelo de classe(Machine) nos demais. Isso ocorre porquê muitas vezes um trecho de código é definido como estrutura padrão de um sistema(não necessariamente sendo utilizado da mesma forma). O interface evita a repetição desnecessária de código.

Um outro ponto é que uma classe pode tanto implementar quando herdar de classes distintas sem mais problemas, sendo uma alternativa a impossibilidade de herança múltipla.


<h2>Mixin</h2>


O mixin é um método de definição de acesso a recursos de uma classe de forma restrita. Assim como um interface, só é possível acessar um mixin caso a relação entre ele e uma classe for explícita, esta sendo declarada pela keyword <b><i>with</i></b>:


    abstract class Cash {
      balance();
    }
    
    class Bank extends Cash {
      @override
      balance() {
        print('Cash');
      }
    }
    
    mixin Score {
      void credit() {
        print('Credit');
      }
    }
    
    class PremiumCustomer extends Bank with Score {}
    
    class CommonCustomer extends Bank {}
    
    void main() {
      print('\nO Cliente Premium tem: \n');
      PremiumCustomer premium = new PremiumCustomer();
      premium.balance();
      premium.credit();
      print('\nO Cliente Common tem: \n');
      CommonCustomer common = new CommonCustomer();
      common.balance();
    }

OutPut:

>O Cliente Premium tem: 
>
>Cash
>Credit
>
>O Cliente Common tem: 
>
>Cash


O exemplo define dois tipos de clientes, um Premium e um Common. Por possuir mais privilégios, um cliente Premium possuiria acesso ao mixin Score, tendo acesso exclusivo ao método credit. O mixin é extremamente importante no processo de declaração de relações e acesso a informação entre classes, tornando o código ainda mais seguro.

<h1>Programação Assíncrona</h1>

Com o avanço da comunicação entre diferentes sistemas, os modelos de execução que priorizam performance se tornaram cada vez mais importantes quando se visa eficiência no desenvolvimento de aplicações. Com isso, entender modelos síncronos e assíncronos, e como seu uso possibilita a criação de diferentes meios para desenvolver um sistema que se comunique, trate e use as informações obtidas passou a ser essencial.

<h2>Por que o código assíncrono é importante</h2>

Uma computação assíncrona não pode fornecer um resultado imediatamente quando é iniciada, sendo o oposto de uma computação síncrona, cujo resultado é calculado e retornado de forma imediata. Tal recurso é essencial quando se pretende obter informações externas ao programa (ler um arquivo, consultar um banco de dados, buscar uma página da Web), o que demanda tempo. Em vez de bloquear toda a computação até que o resultado esteja disponível, a computação assíncrona imediatamente retorna uma Future que eventualmente "completará" com o resultado. Ou seja, a programação assíncrona permite criar com base em uma arquitetura multi-thread não bloqueante, sendo o modelo ideal quando é a performance é priorizada.

<h1>O que é uma Future ?</h1>

Uma <b><i>Future</i></b> é a representação do resultado de uma operação assícrona, ou uma promise, podendo ter dois estados: uncompleted e completed.

- <b><i>Uncompleted</i></b>: Quando uma chamada em uma função assíncrona é feita, seu resultado é retornado como uma uncompleted future. Essa future passa a esperar o fim da operação ou lança um erro.

- <b><i>Completed</i></b>: Se a operação assíncrona for bem sucedida, a future resulta em um valor de retorno, caso contrário, resulta em um erro.

<h2>async e await</h2>


As palavras-chave <b><i>async</i></b> e <b><i>await</i></b> fornecem um meio declarativo de definição de funções assíncronas e de uso de seus resultados. Para performar uma computação assíncrona, é preciso criar uma função assíncrona, a qual sempre produz uma futuro. Dentro de tal função é possível operar um await para atrasar a execução até que outra computação assíncrona tenha um resultado. Enquanto a execução da função em espera está atrasada, o programa não é bloqueado e pode continuar fazendo outras coisas.

Exemplo:

    import "dart:io";

    Future<bool> fileContains(String path, String needle) async {
       var haystack = await File(path).readAsString();
       return haystack.contains(needle);
    }

Aqui, o método File.readAsString, oriundo do dart:io, é uma função assíncrona que retorna uma Future String. A função fileContains é marcada com async logo antes de seu corpo, o que a torna uma promise. A chamada de File(path).readAsString() inicia a leitura do arquivo em uma string e produz um Future String que eventualmente irá conter um resultado. 

O await então espera que a Future seja concluída com uma string (ou um erro, se a leitura do arquivo falhar). Enquanto espera, o programa pode fazer outras coisas. Quando o futuro é concluído com uma string, a função fileContains calcula um booleano e o retorna, o que então completa o futuro original que retornou quando chamado pela primeira vez.

Com isso se conclui que uma future de tipo <b>T</b> resulta em um valor do tipo <b>T</b>. Sendo este o caso da função fileContains.

<h2>Future Exception</h2>

Caso uma Future retorne um <i>error</i>, aguardar sua conclusão (re)lançará o error em questão. Para trarar possíveis erros no processo de obtenção de uma Future, usa-se o error catcher ```try catch```:

    import "dart:io";
    
    Future<bool> fileContains(String path, String needle) async {
      try {
        var haystack = await File(path).readAsString();
        return haystack.contains(needle);
      } on FileSystemException catch (exception, stack) {
        _myLog.logError(exception, stack);
        return false;
      }
    }

Em geral, ao escrever código assíncrono, é essencial aguardar uma Futuro quando ele for produzido e não esperar até depois de outro atraso assíncrono. Isso garante o preparo antecipado para receber qualquer erro que o futuro possa produzir, o que é importante já que um erro assíncrono não aguardado é um erro não detectado, o que pode encerrar o programa em execução.

<h2>Future API </h2>

A classe Future também fornece uma funcionalidade mais direta e de baixo nível para acessar o resultado com o qual ela é concluída. Os recursos async e await são criados com base nessa funcionalidade e, às vezes, faz sentido usá-lo diretamente. Há casos em que não é possível executar determinadas ações apenas esperando uma Futuro de cada vez.

Com uma Future, é possível registrar manualmente os retornos de chamadas que tratam do valor, ou erro, assim que estiver disponível. Por exemplo:

    Future<int> future = getFuture();
    future.then((value) => handleValue(value)).catchError((error) => handleError(error));

Como uma Future pode ser concluída de duas maneiras, com um valor (se a computação assíncrona for bem-sucedida) ou com um erro (se a computação falhar), é possível instalar retornos de chamada para um ou ambos os casos.


<h2>Fluxo de Execução Assíncrono</h2>


Uma função async é executada sincronicamente até o primeiro await. Isso significa que dentro de um corpo de função assíncrona, todo o código síncrono antes da primeira palavra-chave await é executado imediatamente. A seguir há um exemplo com o qual é possível entender melhor o fluxo de execução assíncrono:

    Future<void> printOrderMessage() async {
      print('Aguardando pedido do usuário...');
      var order = await fetchUserOrder();
      print('Seu pedido é: $order');
    }
    
    Future<String> fetchUserOrder() {
      return Future.delayed(const Duration(seconds: 4), () => 'Café');
    }
    
    Future<void> main() async {
      countSeconds(4);
      await printOrderMessage();
    }
    
    // Você pode ignorar esse método - Sua função é todar o delay visível
    void countSeconds(int s) {
      for (var i = 1; i <= s; i++) {
        Future.delayed(Duration(seconds: i), () => print(i));
      }
    }

Aqui temos basicamente quatro métodos. Três deles, incluindo o main method, são de execução assícrona, ou seja, são Futures que executam ações de acordo com o tempo de retorno das chamadas. O quarto método torna visível o delay de quatro segundos que cada await demora para retornar um valor.

Output:

>Aguardando pedido do usuário...<br>
>1<br>
>2<br>
>3<br>
>4<br>
>Seu pedido é: Café

O run inicia no main method, cuja função aqui é executar as demais Futures. Com isso, perceba que por mais que a função print('Aguardando pedido do usuário...') esteja dentro de uma função assíncrona, ela é executado imediatamente. Isso ocorre graças a natureza síncrona da print() function. Já na chamada do método fetchUserOrder(), que também é instanciado com um await, há um delay proposital que demonstra sua natureza assíncrona.


<h1>O que é uma Stream ?</h1>


A programação assíncrona em Dart não só se caracteriza pelo uso de Futures mas também da ```Stream``` class. Uma Future representa uma computação cuja conclusão não se dá de imediato. Uma função comum retorna o resultado; uma função assíncrona retorna uma Future que pode eventualmente conter o resultado. A Future em si se responsabiliza por avisar quando o resultado estiver pronto.

Uma Stream é uma sequência de eventos assíncronos. Sendo comparável a um Iterable assíncrono, onde, ao invés de obter o próximo evento quando solicitado, notifica quando o evento estiver disponível. Com isso, cabe ressaltar alguns conceitos básicos sobre as Streams:

<h2>StreamSubscription</h2>

Streams usam um pattern bastante comum à programação reativa, o chamado observer pattern. O método ```listen``` aplica o conceito de observer ao uso das Streams, o qual passa a monitorar seu fluxo de dados, retornando um objeto ```StreamSubscription```, o qual trata os eventos através dos manipuladores ```onData```, ```onError ``` e ```onDone```:

    StreamSubscription<int> listen(
      void Function(int)? onData, {
      Function? onError,
      void Function()? onDone,
      bool? cancelOnError,
    })

O manipulador <i>onData</i> é uma callBack function que permite tratar o event T em cada retorno de uma Stream. Já os demais são utilizados em situações em que o event não foi emitido, seja pela ocorrencia de um erro ou pela conclusão da Stream. Além disso, há o manipulador adicional <i>cancelOnError</i>, o qual permite forçar a Stream a continuar mesmo após a ocorrencia de um erro(sendo true por padrão). O exemplo a seguir trata estes conceitos de maneira prática:

    void main () {
    
      final streamSubscription = Stream<int>.periodic(
        Duration(seconds: 1),
        (index) => ++index
      ).take(5);
    
      streamSubscription.listen((event) { 
         print(event);
       },
       onError: (err) {
         if(err) {
           print('Error!');
         }
       },
       onDone: () {
         print('Done!');
       },
       cancelOnError: false,
      );
      
    }

Output:

>1<br>
>2<br>
>3<br>
>4<br>
>5<br>
>Done!

No exemplo, a final streamSubscription recebe uma Stream de cinco integers que são emitidos um por um em intervalos de 1 segundo. Na mesma final é aplicado um listen method, o qual opera a subscription através dos seus manipuladores. 

O diagrama a seguir ilustra como uma stream subscription funciona:

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/177454578-e234e8c6-def6-4fb3-a3d9-37918b9972cf.png">
</div>

Associando o diagrama ao exemplo anterior, temos o método <i>periodic</i> agindo como <i>event source</i> criando uma stream, onde ++index é o evento, o método <i>listen</i> aplicado a final <i>streamSubscription</i> agindo como <i>subscriber</i> e os manipuladores do método listen agindo como <i>event callbacks</i>.

<!-- Além disso, é importante mencionar que o objeto ```streamSubscription```, assim com a Stream que o origina, também possui métodos bastante usuais, estes que podem ser utilizados durante o processo de listening.

Para <i>pausar</i> uma subscription:

    // Do some work.
    streamSubscription.pause();
    print(streamSubscription.isPaused); // true

Para <i>retomar</i> uma subscription:

    // Do some work.
    subscription.resume();
    print(subscription.isPaused); // false

Para <i>cancelar</i> uma subscription:

    // Do some work.
    subscription.cancel();
     -->

<h2>Single Subscription Streams</h2>


O tipo mais comum de Stream contem uma sequência de eventos que compõem um todo. Tais eventos precisam ser entregues em uma ordem específica, sem que nenhum se perca no processo. Este seria o tipo de Stream obtido a partir da leitura de um arquivo ou de um request.

Uma Single Subscription Stream pode sofrer um listen uma única vez. Caso sofra novamente, os eventos iniciais podem ser sobrescritos ou perdidos, o que torna o restante da Stream sem sentido. Quando o processo de listening se inicia os dados são obtidos e retornados em partes.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/177463833-4551e6c0-f26f-4d60-a01a-1e08b3da4206.png">
</div>


<h2>Stream Controller</h2>


A forma mais simples de criar uma stream é fazendo uso de um <i>StreamController</i>, o qual implementa a classe [StreamSink](https://api.flutter.dev/flutter/dart-async/StreamSink-class.html). A StreamSink permite tratar stream events tanto de forma síncrona quanto de forma assíncrona através de métodos como o <i>add</i>, <i>addError</i> e o <i>close</i>, os quais permitem iniciar, tratar erros e finalizar streams repectivamente. O exemplo a seguir trata estes conceitos de maneira prática:

    import 'dart:async';

    StreamController controller = StreamController();
      
    generateEvents() async {
      for(var i = 0; i <= 10; i++) {
        controller.add(i);
        await Future.delayed(Duration(seconds: 1));
      }
    }
    
    void main () async {
      
      generateEvents();
      
      controller.stream.listen((event) { 
        print(event);
      });
    
    }

>0<br>
>1<br>
>2<br>
>3<br>
>4<br>
>5<br>
>6<br>
>7<br>
>8<br>
>9<br>
>10

A classe StreamController, a qual compõe a bibliotéca async do Dart, é uma classe que possui uma stream controlada por si. Com esta classe é possível criar streams simples as quais podem sofrer um listen e emitir eventos para outras streams. Também é possível verificar se a stream está pausado ou não, e se possui subscribers ou não, além de receber um retorno de chamada quando um deles mudar.

Como os controllers existem antes do processo de listening ser iniciado, o event source pode adicionar eventos ao controller de forma premeditada, e para evitar a perda de dados, o controller armazena os dados em buffer até que o listening se inicie.


<h2>Broadcast Streams</h2>


Uma Broadcast Stream é própria para eventos individuais que serão tratados um por vez, sendo utilizada para responder a mouse events em um navegador, por exemplo. Tais Streams podem sofrer um listen a qualquer momento, e múltiplos listeners podem operar ao mesmo tempo. Além disso, uma Broadcast Stream pode sofrer um listen após o cancelamento da subcription anterior.

<div align="center">
  <img src="https://user-images.githubusercontent.com/61476935/177640641-4d4594fd-4163-4d5f-a5b4-d90cc09922c2.png">
</div>



<!-- <h3>Stream.multi</h3>

Sendo o event souce do exemplo, o método <i>multi</i> cria uma multi-subscription stream. Uma multi-subscription stream permite a emissão de multiplos eventos a partir de um Stream controller:

    Stream.multi(void Function(MultiStreamController<int>) onListen, {bool isBroadcast = false})

Cada vez que a stream criada sofre um listen, a callback function onListen é invocado com um novo ```MultiStreamController```, o qual emite os eventos obtidos e os encaminha apara a streamSubscription através do método <i>add(event)</i>.

Uma multi-subscription stream pode se comportar como qualquer outra stream. Se o callback onListen for lançado em todas as chamadas após a primeira, a stream irá se comportar como uma <i>Single Subscription Stream</i>. Se a stream emitir os mesmos eventos para todos os listeners atuais, ela irá se comportar como uma broadcast stream. -->

<h2>Gerando Streams</h2>

Sendo um Iterable de promises, uma Stream pode retornar resultados multiplas vezes, diferente de uma Future, que retorna apenas um resultado por interação. Há formas distintas de gerar Streams, sendo uma das mais simples a interação em loop:

    Stream<int> countStream(int to) async* {
      for (int i = 0; i <= to; i++) {
        yield i;
      }
    }

Por ser um conjunto de promises, a interação com uma Stream demanda o uso da função ```async*```(async generator), além disso, outro aspecto próprio da interação com Streams é o seu retorno, cuja acesso se dá não pela palavra-chave <i>return</i>, mas sim pela palavra-chave ```yield```.

O exemplo a seguir usa o código do exemplo anterior para gerar uma Stream de integers fazendo uso de uma async generator:

    Future<int> sumStream(Stream<int> stream) async {
      var sum = 0;
      await for (final value in stream) {
        sum += value;
      }
      return sum;
    }
    
    Stream<int> countStream(int to) async* {
      for (int i = 1; i <= to; i++) {
        yield i;
      }
    }
    
    void main() async {
      var stream = countStream(10);
      var sum = await sumStream(stream);
      print(sum); // 55
    }

Output: 

>55


<h2>Interagindo com Stream Events</h2>


<h2>await for</h2>


As Streams podem ser criadas de várias maneiras, mas todas podem ser usadas ​​da mesma forma: o ```loop for``` assíncrono (comumente chamado de await for) intera sobre os eventos de uma Stream como o ```loop for``` intera sobre um [Iterable](https://api.dart.dev/stable/dart-core/Iterable-class.html), o que permite acessar seus eventos. Exemplo:

    Future<int> sumStream(Stream<int> stream) async {
      var sum = 0;
      await for (final value in stream) {
        sum += value;
      }
      return sum;
    }

O código acima recebe cada evento de uma Stream de integer events, o adiciona e retorna a soma (uma Future). Quando o corpo do loop termina, a função é pausada até que o próximo evento chegue ou a Stream seja concluído.



<h2>Error Events</h2>


Uma Stream é concluída quando todos os eventos nela contidos são executados, e da mesma forma que a Stream notifica a entidade que recebe seus resultados caso um evento seja iniciado, o mesmo ocorre ao finalizá-los. Além dos eventos que retornam informações, Streams podem ter que tratar error events. Quando um erro event ocorre duranto o processo de execução de uma Stream, seja por falha de conexão durante a leitura de dados retornados por um endpoit, ou mesmo bugs no código que executa a Stream, é possível tratá-los da mesma forma que quando utilizamos Futures: ```try-catch```.

O exemplo a seguir retorna um erro quando o iterator do loop <i>await for</i> for igual a 4:

    Future<int> sumStream(Stream<int> stream) async {
      var sum = 0;
      try {
        await for (final value in stream) {
          sum += value;
        }
      } catch (e) {
        return -1;
      }
      return sum;
    }
    
    Stream<int> countStream(int to) async* {
      for (int i = 1; i <= to; i++) {
        if (i == 4) {
          throw Exception('Intentional exception');
        } else {
          yield i;
        }
      }
    }
    
    void main() async {
      var stream = countStream(10);
      var sum = await sumStream(stream);
      print(sum); // -1
    }


<h2>Trabalhando com Streams</h2>


A classe Stream contém um número de métodos auxiliares que permitem realizar operações comuns em Streams, similarmente aos métodos utilizados para tratar um Iterable. Por exemplo, é possível encontrar o último integer positivo em uma Stream utilizando o método <i>lastWhere()</i>, o qual compõe a Stream API.

    Future<int> lastPositive(Stream<int> stream) => stream.lastWhere((x) => x >= 0);

Outros metodos que podem ser citados são:

>Future T get first;<br>
>Future bool get isEmpty;<br>
>Future T get last;<br>
>Future int get length;<br>
>Future T get single;<br>
>Future bool any(bool Function(T element) test);<br>
>Future bool  contains(Object? needle);<br>
>Future E drain E ([E? futureValue]);<br>
>Future T elementAt(int index);<br>
>Future bool every(bool Function(T element) test);<br>
>Future T firstWhere(bool Function(T element) test, {T Function()? orElse});<br>
>Future fold(S initialValue, S Function(S previous, T element) combine);<br>
>Future forEach(void Function(T element) action);<br>
>Future String join([String separator = '']);<br>
>Future T lastWhere(bool Function(T element) test, {T Function()? orElse});<br>
>Future pipe(StreamConsumer T  streamConsumer);<br>
>Future T reduce(T Function(T previous, T element) combine);<br>
>Future T singleWhere(bool Function(T element) test, {T Function()? orElse});<br>
>Future List T toList();<br>
>Future Set T toSet();

Todos os métodos acima, exceto ```drain()``` e ```pipe()```, correspondem a uma função similar de Iterable. Cada uma delas pode ser escrita facilmente através de uma função async em conjunto com um <i>await for</i> loop. Alguns exemplos de sua implementação seriam: 

    Future<bool> contains(Object? needle) async {
      await for (final event in this) {
        if (event == needle) return true;
      }
      return false;
    }
    
    Future forEach(void Function(T element) action) async {
      await for (final event in this) {
        action(event);
      }
    }
    
    Future<List<T>> toList() async {
      final result = <T>[];
      await forEach(result.add);
      return result;
    }
    
    Future<String> join([String separator = '']) async => (await toList()).join(separator);
