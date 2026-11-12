
# DEV-001 — Foundation

**Produto:** DevMind  
**Versão:** 0.1  
**Status:** IN PROGRESS  
**Prioridade:** Alta  
**Última atualização:** 2026-11-12

## 1. Objetivo

Estabelecer a fundação técnica do DevMind, preparando o repositório, projeto macOS, arquitetura inicial, inicialização do aplicativo, integração com a barra de menus e infraestrutura básica de testes.

Ao concluir esta task, deverá existir uma aplicação macOS funcional, compilável, organizada e preparada para receber as próximas funcionalidades.

## 2. Ambiente de desenvolvimento

| Componente | Configuração |
|---|---|
| Computador principal | MacBook Pro 13" A2159 |
| Processador | Intel Core i5 Quad-Core 1,4 GHz |
| Memória RAM | 8 GB |
| Armazenamento livre | Aproximadamente 20 GB |
| Sistema operacional | macOS Sequoia 15.8.2 |
| Xcode | 26.2 |
| Swift | 6.2.3 |
| Git | 2.46.0 |
| Git global | Configurado |
| Ambiente adicional | MacBook Air M4 |

## 3. Escopo

### Incluído

- Inicialização do repositório Git.
- Arquivos essenciais do projeto.
- Estrutura de documentação.
- Projeto macOS com SwiftUI.
- Arquitetura inicial.
- Inicialização do aplicativo.
- Integração com MenuBarExtra.
- Configuração de testes.
- Documentação técnica.

### Fora do escopo

- Skills Manager.
- GitHub Copilot Integration.
- Ollama.
- MLX.
- Chat com IA.
- RAG.
- Agentes autônomos.
- MCP.

## 4. Subtarefas

### DEV-001.1 — Repository Setup

**Status:** IN PROGRESS

Atividades:

- [x] Criar diretório raiz do projeto.
- [x] Inicializar Git.
- [x] Configurar branch main.
- [x] Criar diretórios de documentação.
- [x] Criar README.md.
- [x] Criar CHANGELOG.md.
- [x] Criar .gitignore.
- [ ] Revisar documentação inicial.
- [ ] Preparar primeiro commit.

Critérios de aceitação:

- [x] Repositório Git inicializado.
- [x] Branch principal configurada.
- [x] Estrutura inicial criada.
- [ ] Arquivos revisados.
- [ ] Primeiro commit realizado.

### DEV-001.2 — Project Setup

**Status:** BACKLOG

Atividades:

- [ ] Criar projeto macOS no Xcode.
- [ ] Configurar SwiftUI.
- [ ] Definir nome do produto como DevMind.
- [ ] Configurar Bundle Identifier.
- [ ] Definir deployment target.
- [ ] Configurar assinatura.
- [ ] Validar primeiro build.

Critérios de aceitação:

- [ ] Projeto abre corretamente no Xcode.
- [ ] Target macOS configurado.
- [ ] Aplicação compila.
- [ ] Configurações documentadas.

### DEV-001.3 — Architecture Foundation

**Status:** BACKLOG

Atividades:

- [ ] Organizar estrutura inicial de diretórios.
- [ ] Definir responsabilidades das camadas.
- [ ] Estabelecer estratégia de dependências.
- [ ] Definir limites iniciais dos módulos.
- [ ] Registrar decisões arquiteturais.

Critérios de aceitação:

- [ ] Separação entre Presentation, Domain e Data/Infrastructure.
- [ ] Regras de domínio independentes de SwiftUI.
- [ ] Ausência de dependências circulares.
- [ ] Arquitetura documentada.

### DEV-001.4 — Application Bootstrap

**Status:** BACKLOG

Atividades:

- [ ] Implementar DevMindApp.
- [ ] Configurar janela principal.
- [ ] Preparar composição inicial de dependências.
- [ ] Criar tela inicial provisória.
- [ ] Validar inicialização do aplicativo.

Critérios de aceitação:

- [ ] Aplicativo inicia corretamente.
- [ ] Janela principal abre.
- [ ] Estrutura de inicialização organizada.
- [ ] Build validado.

### DEV-001.5 — Menu Bar Integration

**Status:** BACKLOG

Atividades:

- [ ] Implementar MenuBarExtra.
- [ ] Criar interface inicial do menu.
- [ ] Configurar abertura da janela principal.
- [ ] Validar comportamento no macOS.

Critérios de aceitação:

- [ ] Ícone aparece na barra de menus.
- [ ] Interface do menu funciona.
- [ ] Janela principal pode ser acessada.
- [ ] Comportamento validado manualmente.

### DEV-001.6 — Testing & Validation

**Status:** BACKLOG

Atividades:

- [ ] Configurar target de testes.
- [ ] Implementar testes iniciais relevantes.
- [ ] Executar testes.
- [ ] Executar build final.
- [ ] Revisar avisos e erros.
- [ ] Atualizar documentação.
- [ ] Preparar commit de conclusão.

Critérios de aceitação:

- [ ] Build executado com sucesso.
- [ ] Testes aplicáveis executados.
- [ ] Evidências registradas.
- [ ] Documentação atualizada.

## 5. Diretrizes técnicas

- SwiftUI para apresentação.
- MVVM para organização da apresentação.
- Clean Architecture pragmática.
- Swift Package Manager.
- Observation quando adequado.
- XCTest para testes.
- Markdown e YAML Frontmatter para Skills futuramente.
- FileManager para armazenamento inicial.
- URLSession e async/await para comunicação HTTP futura.

Não criar abstrações sem necessidade concreta.

Não criar um package por classe ou funcionalidade pequena.

## 6. Regras de execução

1. Executar uma subtarefa por vez.
2. Explicar decisões arquiteturais relevantes.
3. O desenvolvedor escreverá o código manualmente.
4. Validar build e testes antes de avançar.
5. Não declarar tarefas concluídas sem evidências.
6. Atualizar documentação a cada sessão.
7. Revisar alterações antes dos commits.

## 7. Registro de execução

| Data | Atividade | Resultado |
|---|---|---|
| 2026-11-09 | Confirmação do ambiente | Concluída |
| 2026-11-11 | Definição do diretório raiz | Concluída |
| 2026-11-12 | Inicialização do Git e branch main | Concluída |
| 2026-11-12 | Criação da estrutura documental | Concluída |

## 8. Checklist geral

- [ ] DEV-001.1 — Repository Setup
- [ ] DEV-001.2 — Project Setup
- [ ] DEV-001.3 — Architecture Foundation
- [ ] DEV-001.4 — Application Bootstrap
- [ ] DEV-001.5 — Menu Bar Integration
- [ ] DEV-001.6 — Testing & Validation

**Status geral:** IN PROGRESS

**Próxima ação:** finalizar a documentação inicial e realizar o primeiro commit.
