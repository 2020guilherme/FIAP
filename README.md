### **FarmTech Solutions: Aplicação de Agricultura Digital em Python e R**

Este projeto é uma aplicação desenvolvida como parte de uma atividade acadêmica, simulando uma solução para a Startup FarmTech Solutions. O objetivo foi criar uma ferramenta de agricultura digital para auxiliar produtores de soja e milho no gerenciamento de suas lavouras, utilizando a integração entre as linguagens de programação Python e R.

---

#### **Recursos e Tecnologias Utilizadas**

* **Python:** Linguagem principal para a interface e a lógica da aplicação.
* **R:** Utilizado para a análise estatística dos dados e para a funcionalidade bônus.
* **Git & GitHub:** Ferramentas de versionamento de código e colaboração.
* **Bibliotecas Python:** `csv`, `math`, `os`, `subprocess`.
* **Bibliotecas R:** `httr`, `jsonlite`.
* **API:** OpenWeatherMap, para a funcionalidade de previsão do tempo.

---

#### **Funcionalidades da Aplicação (Python)**

A aplicação em Python é a interface principal, com um menu interativo que permite ao usuário:

* **Gerenciar Plantios:** Cadastrar, visualizar, editar e excluir informações de talhões (áreas de plantio), que são armazenadas em uma estrutura de vetor de dicionários.
* **Cálculo de Insumos:** Calcular a quantidade de insumos necessários (herbicida, fungicida, etc.) para um talhão específico, com base na metragem e no espaçamento entre as ruas.
* **Análise Estatística com R:** Exportar os dados dos talhões para um arquivo CSV e, em seguida, chamar um script R para calcular a média e o desvio padrão de métricas como área e comprimento das ruas.
* **Consultar Previsão do Tempo:** Executar um script R que se conecta a uma API meteorológica, consulta o clima em cidades produtoras de soja e milho e exibe o resultado diretamente no terminal do Python.

---

#### **O Fluxo de Trabalho Integrado**

O ponto central desta aplicação é a integração perfeita entre Python e R. O programa Python atua como o "cérebro", controlando o fluxo e a interface, enquanto os scripts R realizam as tarefas especializadas de análise e consulta de API. A comunicação entre as duas linguagens é feita via `subprocess`, garantindo um fluxo de trabalho unificado e eficiente, sem a necessidade de o usuário alternar entre diferentes programas.

Este projeto demonstra uma solução completa de ponta a ponta, desde a coleta e gerenciamento de dados até a análise e a apresentação de informações relevantes para o agronegócio, seguindo as melhores práticas de desenvolvimento de software.
