# Modelos de Otimização: Programação Matemática na Prática | Nubank DS & ML Meetup #82

No dia 26 de julho realizamos mais uma edição do nosso Meetup de Data Science & Machine Learning aqui no Nubank! O tema da vez foi Modelos de Otimização: Programação Matemática na prática, apresentado pela nubanker Luiza Biasoto.  A palestra começou com uma introdução teórica, seguida por um exemplo prático em Python. 

Modelos de Otimização: Programação Matemática na Prática Descrição: 
Quer aprimorar suas tomadas de decisão com técnicas poderosas? Vamos explorar como a Programação Matemática se une ao seu arcabouço analítico existente (incluindo modelos preditivos!) para otimizar decisões e gerar insights extremamente estratégicos! Serão apresentados conceitos básicos da construção de modelos de otimização e teremos um case prático criado exclusivamente para vocês: vamos construir juntos um modelo em Python para otimizar uma política de crédito parcelado e analisar seus diferentes cenários. (Deep-dive da apresentação realizada no Women in Data Science Brazil 2023)

Sobre Luiza Biasoto: Luiza é formada em Engenharia Química pela Poli-USP, possui MBA em Tecnologia de Software e é mestranda em Engenharia da Computação também pela Poli-USP. Desde 2014 trabalhou com Engenharia de Software, Estratégia de Crédito, Ciência de Dados e Pesquisa Operacional. Hoje atua como Lead Data Scientist no Nubank.

LinkedIn:https://www.linkedin.com/in/lpbiasoto/ 

Esse vídeo foi gravado no [Nubank Data Science & Machine Learning Meetup #82](https://youtu.be/ASvxOTL_-qw) no dia 26 de julho de 2023

## Instalação via Docker

Para a instalação de forma mais fácil recomendo a instalação do Docker que pode ser feito via Windows ou Mac com [Docker Desktop](https://docs.docker.com/desktop/install/windows-install/) ou instalando [Docker Engine](https://docs.docker.com/engine/install/ubuntu/) no Ubuntu.

### Executando o código e acessando o Notebook
O código abaixo vai fazer a build da imagem se não houver previamente e depois executar o container, no seu terminal vai aparecer um link para clicar e abrir o notebook.
```shell
docker compose up
```

Basta clicar em um dos links, por exemplo o http://127.0.0.1:8888 com o token gerado:
```console
meetupnubank-notebook-1  |     Or copy and paste one of these URLs:
meetupnubank-notebook-1  |         http://127.0.0.1:8888/tree?token=66e25f98ab0e83b7536ffb3af23ee70f32ef740c8b87d33e
meetupnubank-notebook-1  | [I 2023-08-09 23:45:52.095 ServerApp] Skipped non-installed server(s): bash-language-server, dockerfile-language-server-nodejs, javascript-typescript-langserver, jedi-language-server, julia-language-server, pyright, python-language-server, python-lsp-server, r-languageserver, sql-language-server, texlab, typescript-language-server, unified-language-server, vscode-css-languageserver-bin, vscode-html-languageserver-bin, vscode-json-languageserver-bin, yaml-language-server
```

feito isso basta clicar duas vezes no arquivo MILP.ipynb e executar o notebook.