# PoC
## Gerenciamento de estado com Provider e Mobx no Flutter

Provendo reatividade com estados globais e uso do padrão de projeto Observer

### Definição e características do Estado

- Dados que afetam a interface e que são alterados durante o uso do aplicativo
- Esses dados podem ser globais (compartilhado) ou locais (interno a um componente)
- Dados locais tem como boa prática ser compartilhado entre componentes diretamente relacionados (pai e filho)
- Dados globais podem ser acessados e manipulados por qualquer componente da aplicação

### Funcionamento do Provider

- Resolve problema de compartilhamento de dados entre componentes distantes
- É um provedor de dados (estado) que disponibiliza esses dados para os componentes que estão hierarquicamente abaixo dele
- Pode prover dados para aspectos visuais da UI ou para dados de processamento do aplicativo
- Caso o dado (estado) do Provider seja acessado no componente, se o mesmo for do tipo StatefullWidget, a UI é renderizada novamente (método build é executado, atualizando os dados da interface)
- Os dados (estado) do Provider são acessado pelos componentes com o método “of(context)”
- O Provider pode ser inserido em diferentes níveis da hierarquia da aplicação, porém somente os componentes abaixo dessa hierarquia terão acesso aos dados (estado) desse Provider

### Instalação Provider

- Inclusão da dependência “provider: ^6.0.0” (possui suporte para null safety)
- Importação da lib provider/provider.dart
- Inclusão do widget “Provider” sobre o widget “MaterialApp” para prover dados globais para todo o aplicativo
- De forma alternativa pode ser usado o widget “MultiProvider” para inclusão de vários providers sem aninhamento

### Mobx

- Implementa gerenciamento de estado com padrão de projeto Observer
- Três pilares:
    -- Action (manipulação do estado)
    -- Observable (estado)
    -- Reaction (efeitos da alteração do estado – Observer)

### Provider + Mobx

- Permite realizar o gerenciamento de estado em contexto global
- Possibilita usar no projeto o conceito de “Store” para armazenar dados de determinado contexto
- Esses dados no “Store” podem ser compartilhados e gerenciados via Mobx por qualquer componente do aplicativo

### Referências

- [Provider](https://pub.dev/documentation/provider/latest/)
- [Consumer](https://pub.dev/documentation/provider/latest/provider/Consumer-class.html)
- [Flutter Mobx](https://pub.dev/documentation/flutter_mobx/latest/)
- [Mobx](https://pub.dev/documentation/mobx/latest/)
- [Mobx Codegen](https://pub.dev/documentation/mobx_codegen/latest/)
- [Build Runner](https://pub.dev/documentation/build_runner/latest/)

