Pré-prova: github.com/alexandrezamberlan/bancodedadosufn

Primeira unidade: modelar no nível conceitual um esquema de banco de dados
  # Conceitos básicos:
  - partes de um sistema: aspectos funcionais e estruturais
  - análise de requisitos: e o processo de modelagem (foco de disciplina)	
  - banco de dados versus sistema gerenciador de banco de dados      
      
  ## Modelagem: criação de diagramas ou esquemas
  
  # Nível ou fase CONCEITUAL: mapear aspectos estruturais para mostrar/discutir com cliente (ou gerar documentação)
  - mostrar ou ilustrar
    - ENTIDADES (futuras tabelas)
    - ATRIBUTOS (variáveis de uma tabela - identificadores e complementares)
    - RELACIONAMENTOS (futuras chaves estrangeiras - simples e herança)
    - CARDINALIDADE (quantidade de relação de um objeto com outro entre tabelas)
  
  # Nível ou fase LÓGICA: pensar nas chaves estrangeiras e ajudar o programador
  
  # Nível ou fase FÍSICA: pensar na linguagem e tecnologias

Exercicio de revisão
  - É necessário modelar um esquema de banco de dados para um fluxo ou funcionalidade de um sismtea de submissão de projetos em uma instituição.
  - Em uma instituição, há professores/pesquisadores que submetem projetos de extensão. Um projeto possui título, resumo, coordenador (professor/pesquisador),
  - equipe (Relação de professores/pesquisadores), área de pesquisa (TECNOLÓGICA, SAÚDE, HUMANAS, SOCIAL), uma instituição responsável. Uma instituição tem nome, sigla, endereço.
  - Um pesquisador/professor possui nome, email, cpf, número de celular. Todo o projeto submetido precisa passar por uma avaliação. A avaliação é composta por uma submissão de projeto,
  - um avaliador responsável (professor/pesquisador), um avaliador suplente (professor/pesquisador), campo para parecer, data limite de parecer, resultado (APROVADO, REPROVADO, EM CORREÇÃO).

1 passo: identificar entidades
2 passo: identificar atributos
3 passo: identificar relacionamentos
4 passo: identificar cardinalidades
