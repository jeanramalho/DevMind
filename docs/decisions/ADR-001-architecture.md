
# ADR-001 — Architecture Decision

**Título:** Definição da arquitetura inicial do DevMind  
**Status:** ACEITO  
**Data:** 2026-11-12  
**Responsáveis:** Projeto DevMind

## 1. Contexto

O DevMind será uma aplicação nativa para macOS, desenvolvida em Swift e SwiftUI.

O produto possui diferentes áreas funcionais:
- Gerenciamento de Skills.
- Integração com GitHub Copilot.
- Integração com provedores de IA.
- Gerenciamento de contexto.
- Funcionalidades futuras de automação.

A arquitetura precisa permitir evolução incremental, separação de responsabilidades e testabilidade, sem introduzir complexidade desnecessária para a versão inicial.

## 2. Decisão

Adotar uma arquitetura baseada em:

- MVVM.
- Clean Architecture pragmática.
- SwiftUI.
- Swift Package Manager.
- Observation.
- Injeção de dependências.

A arquitetura será modularizada progressivamente conforme a complexidade e os limites reais do domínio.

## 3. Organização arquitetural

### Presentation

Responsável pela interface e interação com o usuário.

Tecnologias:
- SwiftUI.
- ViewModels.
- Observation.
- Navegação e estado de interface.

### Domain

Responsável pelas regras de negócio.

Componentes:
- Entidades.
- Value Objects, quando necessários.
- Protocolos.
- Casos de uso.
- Regras de domínio.

O Domain não deverá depender de SwiftUI, FileManager ou implementações concretas de infraestrutura.

### Data / Infrastructure

Responsável por implementações técnicas.

Componentes futuros:
- Repositórios.
- Persistência local.
- Leitura e escrita de Markdown.
- Integração HTTP.
- OllamaProvider.
- MLXProvider.
- Exportação para GitHub Copilot.

## 4. Gerenciamento de dependências

Será utilizado Swift Package Manager.

A criação de módulos independentes será baseada em:
- Responsabilidade funcional.
- Reutilização.
- Necessidade de isolamento.
- Testabilidade.
- Complexidade real.

Não será criado um package para cada classe ou arquivo.

## 5. Interface do aplicativo

SwiftUI será a tecnologia principal para a interface.

A aplicação deverá oferecer:
- Janela principal.
- Integração com a barra de menus usando MenuBarExtra.
- Interface preparada para evolução por funcionalidades.

## 6. Estratégia de IA

O domínio não deverá depender de um provedor específico.

Ollama será o primeiro provider local implementado.

MLX poderá ser adicionado futuramente para Apple Silicon.

A abstração de providers será introduzida na etapa de implementação de IA, evitando antecipar contratos sem requisitos concretos.

## 7. Persistência

A primeira implementação deverá priorizar soluções simples:

- Markdown para conteúdo de Skills.
- YAML Frontmatter para metadados.
- FileManager para operações com arquivos.

SQLite poderá ser introduzido futuramente caso os requisitos de pesquisa, indexação ou relacionamento justifiquem.

## 8. Testabilidade

Serão utilizados XCTest e testes adequados às responsabilidades de cada módulo.

A arquitetura deverá favorecer dependências substituíveis e isolamento das regras de negócio.

## 9. Consequências

### Benefícios

- Separação de responsabilidades.
- Facilidade de manutenção.
- Testabilidade.
- Evolução incremental.
- Independência dos providers de IA.
- Menor acoplamento à interface.

### Custos e riscos

- Necessidade de disciplina na definição das dependências.
- Possibilidade de abstrações prematuras.
- Custo inicial de organização arquitetural.

Esses riscos serão controlados mantendo a arquitetura pragmática.

## 10. Alternativas consideradas

### Arquitetura totalmente baseada em MVVM

Não escolhida isoladamente porque o crescimento do produto pode exigir separação mais clara das regras de negócio e infraestrutura.

### Clean Architecture com múltiplas camadas e módulos desde o início

Não escolhida porque aumentaria a complexidade inicial sem benefício proporcional para a versão 0.1.

### Arquitetura baseada em microserviços

Descartada porque o DevMind será inicialmente uma aplicação desktop local.

## 11. Revisão

Esta decisão poderá ser revisada quando:
- O produto crescer significativamente.
- Surgirem novas necessidades de persistência.
- Novos providers exigirem abstrações adicionais.
- A separação de módulos demonstrar benefícios concretos.
