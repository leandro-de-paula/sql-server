### sql-server
---

# Domínio de Banco de Dados e Linguagem SQL no SQL Server

Este repositório contém materiais e exemplos para auxiliar no domínio de banco de dados, conceitos e linguagem SQL no ambiente do SQL Server. O conteúdo abrange desde o básico até tópicos avançados, fornecendo uma base sólida para o desenvolvimento e administração de bancos de dados utilizando o SQL Server.

## Objetivos

- Aprender os conceitos fundamentais de banco de dados relacionais
- Dominar a linguagem SQL para manipulação e consulta de dados
- Explorar técnicas avançadas de otimização de consultas e desempenho
- Compreender os principais aspectos da administração de bancos de dados SQL Server

## Instalação e Configuração do Ambiente

### Linux

#### Docker:
1. Atualize o índice de pacotes do apt: `sudo apt update`
2. Instale alguns pacotes necessários para que o apt use pacotes via HTTPS: 
    ```bash
   sudo apt install apt-transport-https ca-certificates curl software-properties-common
    ```
3. Adicione a chave GPG para o repositório oficial do Docker ao sistema: 
    ```bash 
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    ```
4. Adicione o repositório Docker às fontes APT:
    ```bash
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    ```
5. Atualize o índice de pacotes novamente: 
    ```bash
    sudo apt update
    ```
6. Instale o Docker: 
    ```bash
    sudo apt install docker-ce`
    ```

#### SQL Server:
1. Siga as instruções oficiais da Microsoft para instalar o SQL Server no Docker: [Instruções aqui](https://docs.microsoft.com/pt-br/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash)

#### Azure Data Studio:
1. Baixe o arquivo `.deb` do [site oficial](https://docs.microsoft.com/pt-br/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15).
2. Instale usando o comando: 
    ```bash
    sudo dpkg -i <nome_do_arquivo>.deb
    ```

### Windows

#### SQL Server:
1. Acesse o [site oficial da Microsoft](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads) e baixe o instalador do SQL Server.
2. Execute o instalador e siga as instruções na tela.

#### Azure Data Studio:
1. Baixe o instalador do [site oficial](https://docs.microsoft.com/pt-br/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15).
2. Execute o instalador e siga as instruções na tela.

## Bancos de Dados para Uso no Projeto

Os arquivos de banco de dados para uso no projeto estão localizados na pasta `database`. Atualmente, temos o arquivo `curso_bk1.bak` disponível para uso.

### Restaurando os Bancos de Dados

1. Abra o SQL Server Management Studio ou Azure Data Studio.
2. Conecte-se à sua instância do SQL Server.
3. Clique com o botão direito do mouse em "Databases" e selecione "Restore Database".
4. Selecione a opção "Device" e navegue até o local do arquivo `.bak` que você deseja restaurar.
5. Siga as instruções na tela para concluir a restauração.

## Estrutura do Repositório

O repositório está organizado da seguinte forma:

- [database: Banco de Dados para usar como testes](database/README.md)
- [instrucoes: DML DDL DCL TCL](instrucoes/README.md)
- [operadores: Operadores usado no SQL SERVER](operadores/README.md)
- [exemplos: Scripts em geral](exemplos/)

## Como Utilizar este Repositório

Cada módulo possui seu próprio README com instruções e informações sobre o tópico abordado. 

Os exemplos estão disponíveis dentro de cada pasta, e na pasta `exemplos/` temos scripts que podem ser utilizados como base para práticas e estudos adicionais.

## Contribuição

Contribuições para este repositório são bem-vindas! Caso tenha sugestões, correções ou deseje adicionar conteúdo adicional, sinta-se à vontade para abrir um *pull request*.

## Recursos Externos

Além dos materiais disponíveis neste repositório, recomenda-se consultar os seguintes recursos externos para aprofundar seus conhecimentos:

- [Documentação Oficial do SQL Server](https://docs.microsoft.com/pt-br/sql/?view=sql-server-ver15)
- [Microsoft Learn - SQL Server](https://docs.microsoft.com/learn/sql-server/)

## Referências
Este repositório é baseado no curso da Udemy:

Banco de dados Expert: Linguagem SQL e Administração.


## Licença

Este repositório é licenciado sob a [MIT License](LICENSE).

