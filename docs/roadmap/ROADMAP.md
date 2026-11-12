
# DevMind — Roadmap

**Versão:** 0.1  
**Status do projeto:** Em planejamento / Fundação  
**Última atualização:** 2026-11-12

## 1. Visão do produto

O DevMind é um hub de inteligência para desenvolvimento de software, construído em Swift e SwiftUI para macOS.

Seu objetivo é centralizar ferramentas, conhecimentos e recursos inteligentes que auxiliem o desenvolvedor durante seu fluxo de trabalho.

O produto será desenvolvido de forma modular, permitindo a evolução independente de suas funcionalidades e a integração de diferentes provedores de inteligência artificial.

## 2. Objetivos principais

- Centralizar e organizar Skills utilizadas no desenvolvimento.
- Facilitar o aproveitamento de instruções e contextos no GitHub Copilot para Xcode.
- Disponibilizar inteligência artificial local por meio de providers.
- Permitir que Skills sejam utilizadas como contexto em interações com IA.
- Construir uma base extensível para funcionalidades futuras.

## 3. Roadmap de desenvolvimento

### DEV-001 — Foundation
**Status:** IN PROGRESS

Objetivo: estabelecer a fundação técnica do aplicativo.

Entregas:
- Repositório Git.
- Estrutura inicial do projeto.
- Projeto macOS com SwiftUI.
- Arquitetura inicial.
- Inicialização do aplicativo.
- Integração com MenuBarExtra.
- Estrutura inicial de testes.
- Documentação arquitetural.

### DEV-002 — Skills Manager
**Status:** BACKLOG

Objetivo: implementar o gerenciamento de Skills.

Entregas:
- Modelo de domínio Skill.
- Leitura e escrita de Markdown.
- Suporte a YAML Frontmatter.
- Criar, editar e excluir Skills.
- Importar e exportar.
- Categorias, tags e pesquisa.
- Organização por workspace.
- Ativação e seleção de Skills.

### DEV-003 — GitHub Copilot Integration
**Status:** BACKLOG

Objetivo: permitir que as Skills do DevMind sejam aproveitadas pelo GitHub Copilot no Xcode.

Entregas:
- Verificação das capacidades oficiais do Copilot para Xcode.
- Identificação do workspace.
- Exportação de instruções.
- Geração de arquivos `.prompt.md`.
- Geração de `.github/copilot-instructions.md`.
- Prévia dos arquivos.
- Proteção contra sobrescrita.
- Possibilidade de reversão das alterações.

Observação: não assumir suporte a Agent Skills padrão (`SKILL.md`) diretamente no Xcode. A integração deverá utilizar formatos efetivamente suportados pela versão-alvo.

### DEV-004 — Local AI / Ollama
**Status:** BACKLOG

Objetivo: integrar um provedor de IA local.

Entregas:
- Contrato independente de provider.
- Integração HTTP com Ollama.
- Detecção da disponibilidade do serviço.
- Listagem de modelos.
- Seleção de modelo.
- Chat.
- Streaming de respostas.
- Tratamento de erros e cancelamento.

### DEV-005 — Context Management
**Status:** BACKLOG

Objetivo: permitir que as Skills selecionadas sejam utilizadas como contexto nas conversas.

Entregas:
- Seleção de Skills por conversa.
- Montagem de contexto.
- Controle de tamanho do contexto.
- Exibição das Skills utilizadas.
- Histórico local de conversas.

### DEV-006 — Stabilization & Release
**Status:** BACKLOG

Objetivo: estabilizar a primeira versão utilizável.

Entregas:
- Testes de regressão.
- Correção de bugs.
- Revisão de acessibilidade.
- Tratamento de erros.
- Revisão de documentação.
- Preparação de release interno.

## 4. Funcionalidades futuras

Ficam fora do escopo inicial da versão 0.1:

- Agentes autônomos.
- Edição automática de arquivos de projetos externos.
- Análise de screenshots e geração de interfaces SwiftUI.
- RAG e busca semântica avançada.
- Integração com MCP.
- Provider MLX.
- Sincronização em nuvem.
- Integrações adicionais com provedores externos.

Essas funcionalidades poderão ser priorizadas em versões futuras.

## 5. Estratégia de arquitetura

Arquitetura proposta:

- MVVM.
- Clean Architecture pragmática.
- SwiftUI.
- Swift Package Manager.
- Observation.
- Separação entre Presentation, Domain e Data/Infrastructure.

A modularização será realizada conforme a necessidade real do produto, evitando abstrações e packages prematuros.

## 6. Estratégia de IA

O DevMind deverá trabalhar com uma abstração independente de hardware e fornecedor.

Providers planejados:

- Ollama: primeiro provider de IA local.
- MLX: provider futuro para Apple Silicon.
- Outros providers poderão ser adicionados posteriormente.

O funcionamento principal do DevMind não deverá depender exclusivamente de IA local.

## 7. Estratégia de desenvolvimento

Metodologia baseada em:
- Agile/Scrum adaptado.
- Kanban.
- Divisão de funcionalidades em tarefas menores.
- Documentação como código.
- Testes automatizados quando aplicáveis.

Uma task só será considerada concluída após validação técnica e atualização da documentação.

## 8. Fluxo principal de aceitação da versão 0.1

1. Criar uma Skill.
2. Organizar e selecionar a Skill.
3. Exportar instruções para um projeto Xcode.
4. Selecionar um modelo Ollama.
5. Iniciar uma conversa utilizando a Skill como contexto.

## 9. Histórico

| Data | Alteração |
|---|---|
| 2026-11-06 | Planejamento inicial do produto e arquitetura |
| 2026-11-09 | Ambiente de desenvolvimento confirmado |
| 2026-11-12 | Estrutura inicial do repositório e documentação |
