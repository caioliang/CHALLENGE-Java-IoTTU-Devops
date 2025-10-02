# ⚙️ DEVOPS TOOLS AND CLOUD COMPUTING: Version.


Este guia descreve os passos necessários para configurar a infraestrutura na Microsoft Azure e implantar a aplicação IoTTU utilizando o Azure CLI e GitHub Actions.

## ✅ Pré-requisitos

Antes de começar, certifique-se de que você possui:

* **Conta na Azure**: Uma assinatura ativa na Microsoft Azure.
* **Azure CLI**: A [interface de linha de comando da Azure]
* **Cliente de Banco de Dados**: DBeaver, pgAdmin ou um software similar para se conectar ao PostgreSQL.
* **Git**: Para clonar o repositório.


## Arquivos utilizado no caminho abaixo:

**`../comandos-deploy`**


## 🐘 2. Criação do Banco de Dados PostgreSQL

Nesta etapa, vamos configurar e executar o script que cria a instância do banco de dados na Azure.

1.  **Abra o arquivo de script** `create-sql-postgres.sh`.

2.  **Altere as variáveis** no início do arquivo para refletir o seu ambiente

3.  **Execute o script** Ajuste as permissões do arquivo no AZURE CLI e execute:
    ```bash
    bash create-sql-postgres.sh
    ```

4.  **Responda às perguntas do script**:
    > **IMPORTANTE**: Durante a execução, o script fará duas perguntas sobre a liberação de acesso via IP. Responda **'n'** (não) para ambas, conforme abaixo:
    >
    > * `Do you want to enable to client IP (y/n)` -> Digite **n** e pressione Enter.
    > * `Do you want to enable access for all IPs (y/n)` -> Digite **n** e pressione Enter.


## 🚀 3. Configuração do Script de Deploy

O script `deploy-iottu.sh` é responsável por implantar a aplicação.

1.  **Abra o arquivo de script** `deploy-iottu.sh`.

2.  **Altere as variáveis** necessárias, principalmente a que declara a URL do banco de dados que você salvou na etapa anterior.

## 📦 4. Configuração do GitHub Actions (CI/CD)

A etapa final é configurar o GitHub para automatizar o deploy.

1.  **Ajuste os Secrets no GitHub**
    * Navegue até o seu repositório no GitHub.
    * Vá em `Settings` > `Secrets and variables` > `Actions`.
    * Clique em `New repository secret` e adicione os secrets necessários para a pipeline, como as credenciais da Azure e a URL do banco de dados.

2.  **Ajuste o Workflow do GitHub Actions**:
    * Localize o arquivo de workflow principal do seu projeto (geralmente em `.github/workflows/main.yml` ou similar).
    * Edite este arquivo para que ele utilize as configurações e passos definidos no arquivo `iottu-yml.yml`.


---



# 🏍️ IoTTU - Sistema de Gerenciamento de Motos em Pátios

Este projeto é uma aplicação web full-stack para o gerenciamento e rastreamento de motocicletas em pátios. A solução, construída com Spring Boot, integra o back-end (API e regras de negócio) com o front-end renderizado via Thymeleaf, permitindo o monitoramento e controle completo das motos.

---

## 🚀 Tecnologias Utilizadas

* **Java 17**: Linguagem de programação principal.
* **Spring Boot**: Framework para a criação da aplicação.
* **Spring MVC**: Para a construção dos controllers e endpoints da aplicação.
* **Spring Data JPA**: Para a persistência de dados e comunicação com o banco de dados.
* **Thymeleaf**: Motor de templates para a renderização das páginas HTML no lado do servidor.
* **Maven/Gradle**: Gerenciador de dependências e build do projeto.
* **Banco de Dados**: PostgreSQL via docker compose.

## ✨ Funcionalidades Principais

O sistema oferece as seguintes funcionalidades no módulo de Motocicletas:

* **Painel visual das motos no pátio**: Visualização das motocicletas dentro do pátio .
* **Listagem de Motos**: Visualização de todas as motocicletas cadastradas no sistema.
* **Cadastro de Moto (CRUD)**:
    * Criar novas motocicletas, preenchendo informações como modelo, placa, chassi, etc.
    * Editar os dados de motocicletas existentes.
    * Excluir motocicletas do sistema.
* **Associação de Tags RFID**:
    * Vincular uma tag RFID disponível a uma motocicleta durante o cadastro ou edição.
    * O sistema valida se uma tag já está em uso, garantindo que cada tag seja associada a apenas uma moto.
* **Gerenciamento de Pátios e Status**:
    * Associar cada motocicleta a um pátio específico.
    * Definir o status atual da motocicleta (ex: "Disponível", "Em Manutenção").

---


## 📁 Estrutura do Projeto

O projeto está organizado nos seguintes pacotes principais, representando as entidades do sistema:

br.com.fiap.iottu
├── motorcycle       # Entidade principal, controllers e serviços de Moto
├── yard             # Gerenciamento dos Pátios
├── tag              # Gerenciamento das Tags RFID
├── motorcyclestatus # Status possíveis para uma Moto
├── user             # Gerenciamento de Usuários
├── auth             # Lógica de autenticação
├── config           # Configurações gerais do Spring
└── ...

---

## ⚙️ Como Executar o Projeto

1. **Clone o repositório**
   ```bash
   git clone https://github.com/caioliang/CHALLENGE-Java-IoTTU.git
   cd CHALLENGE-Java-IoTTU
   ```

2. **Compile e execute**
   ```bash
   ./gradlew bootRun
   ```

5.  A aplicação estará disponível em **`http://localhost:8080`**.


## 👨‍💻 Autores

Desenvolvido por [Allan Brito](https://github.com/Allanbm100), [Caio Liang](https://github.com/caioliang) e [Levi Magni](https://github.com/levmn) - Projeto acadêmico Mottu - FIAP - 2025
