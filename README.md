## Warren FLUTTER Template

# :rocket: Accelerate Tribe Transactions Challenge FLUTTER
---
### Como funcionará a mecânica da trilha :gear:

O dev deverá criar um repositório de sua autoria com base neste template, pois o mesmo conterá toda a arquitetura padrão warren já pronta para desenvolver as trilhas.

Cada trilha, listados mais abaixo, deve representar um PR, ou mais, a ser avaliado pelos reviewers da tribo.

Basicamente é um app para Movimentações.

O que será avaliado:

- Estruturação do código
- Testes com https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html
- Componentização
- Utilização de bibliotecas sugeridas nas trilhas

---

## Desafio #01 - Pontapé :boom:

### Contexto

O desafio Pontapé será implementar uma tela de lista de transações apresentando os principais dados relacionados a cada uma delas, ao clicar em uma transação será exibido um drawer contendo os detalhes desta transação. O desafio deverá conter as seguintes funcionalidades:

- Lista de transações agrupada por data
- Filtro por título ( No momento apenas o campo )
- Filtro por status ( No momento apenas o campo )


### Objetivo

Utilizar Flutter para o desenvolvimento da tela de listagem somente, focando apenas no componente de listagem, com utilização do riverpod.

Utilizar o mockup para as informações, dados abaixo.

Obs.: não precisa ter as transações de transferência funcionais, é apenas tela.


### Padrões a seguir:

#### Riverpod

Nessa documentação tem tudo o que você precisa para para desenvolver as tarefas. https://www.notion.so/warrenbrasil/Gerenciamento-de-estados-Riverpod-wip-7abf1e514072434cac164c81d533c798


#### Flutter Design System  

Flutter Design System https://github.com/warrenbrasil/flutter-design-system

Todo widget ta dentro do design system acima, você terá que clonar esse repo em sua máquina, ir na pasta /sample e rodar o flutter nesta pasta. Isso irá abrir uma doc de exemplo de todos os componentes

Exemplos de código estão no código em si.

![list_all](https://user-images.githubusercontent.com/97707695/154142021-2da68d78-785d-4080-ba5d-0f8d92e1e23a.png)

---
## Desafio #02 - Consumino API :satellite:
  
### Contexto / Objetivo

- Implementar a funcionalidade dos filtros.
- Utilize os endpoints abaixo para substituir o mockup do Desafio 1.
- Utilize o DIO ( ) para realizar as chamadas http. 


### Endpoints

LIST : https://warren-accelerate-transactions.herokuapp.com/transactions

SEARCH ONE: https://warren-accelerate-transactions.herokuapp.com/transactions/:id

---

## Desafio #03 - Filtros

### Objetivo

Implementar a lógica para filtrar as informações das transações por:

- Título (Campo aberto pra digitação)
- Status (Botões que filtrarão)

![filter](https://user-images.githubusercontent.com/97707695/154142145-c2985307-745f-4ed4-b5ed-2330874b9baf.png) 


---

## Desafio #04 - Modal de Detalhes

### Objetivo

Desenvolver um modal para mostrar os detalhes da transação, bem simples, envolvendo as informações transferência, de/para.

![Captura de tela de 2022-02-15 17-03-38](https://user-images.githubusercontent.com/97707695/154142177-daf103eb-c298-4a22-a45f-68a564d8d017.png)



## Desafio #05 (opcional) - Continous Integration (Linter/Testes) :ferris_wheel:

Utilizar o github action no seu repositório para implementação de 3 actions:

- Linter
- Testes
- Código

O github actions atua quando abrimos um PR e quando mergeamos para determinada branch.

 
