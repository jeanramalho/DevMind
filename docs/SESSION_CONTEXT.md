
# DevMind — Session Context

**Última atualização:** 2026-11-12  
**Versão do produto:** 0.1  
**Status:** Fundação em andamento

## 1. Objetivo deste documento

Este documento fornece o contexto necessário para que outra sessão de desenvolvimento ou outra IA consiga continuar o projeto DevMind sem depender do histórico completo das conversas.

A documentação do repositório é a fonte oficial da verdade.

## 2. Visão do produto

DevMind é um aplicativo nativo macOS, desenvolvido em Swift e SwiftUI, voltado a centralizar recursos inteligentes para desenvolvimento de software.

Funcionalidades planejadas:
- Skills Manager.
- Integração com GitHub Copilot para Xcode.
- IA local via Ollama.
- Contexto por conversa.
- Providers extensíveis.

Funcionalidades avançadas, como RAG, MCP, agentes autônomos e MLX, estão previstas para versões futuras.

## 3. Ambiente do desenvolvedor

### Máquina principal

- MacBook Pro 13".
- Modelo A2159 (2019).
- Intel Core i5 Quad-Core 1,4 GHz.
- Intel Iris Plus Graphics 645.
- 8 GB RAM.
- Aproximadamente 20 GB livres no último levantamento.

### Software

- macOS Sequoia 15.8.2.
- Xcode 26.2.
- Swift 6.2.3.
- Git 2.46.0.
- Credenciais globais do Git configuradas.

### Máquina adicional

Existe acesso a um MacBook Air M4 do trabalho.

Ele poderá ser utilizado futuramente para testes em Apple Silicon, incluindo experimentos com MLX, respeitando as políticas da empresa.

### Restrições

- Priorizar desenvolvimento inicial no Mac Intel.
- Monitorar espaço em disco.
- Evitar modelos locais pesados nesta fase.
- Não exigir uso do MacBook Air M4 para o fluxo principal.

## 4. Arquitetura

Decisão arquitetural registrada em:

`docs/decisions/ADR-001-architecture.md`

Diretrizes:
- MVVM.
- Clean Architecture pragmática.
- SwiftUI.
- Swift Package Manager.
- Observation.
- XCTest.
- Persistência inicial em Markdown e filesystem.

Não introduzir complexidade ou módulos desnecessários.

## 5. Estrutura atual do repositório

Diretório raiz:

`~/Documents/Projetos/MacOS/DevMind`

Estrutura criada:

```text
DevMind/
├── .gitignore
├── README.md
├── CHANGELOG.md
└── docs/
    ├── roadmap/
    │   └── ROADMAP.md
    ├── requirements/
    ├── tasks/
    │   └── DEV-001-foundation.md
    ├── decisions/
    │   └── ADR-001-architecture.md
    └── SESSION_CONTEXT.md
```

Os arquivos foram criados localmente, mas seu conteúdo precisa ser conferido e atualizado conforme a documentação oficial.

## 6. Estado do Git

- Repositório inicializado.
- Branch principal: main.
- Git instalado e configurado.
- Primeiro commit ainda não realizado no último estado confirmado.

Não assumir que houve commits posteriores sem verificar `git status` e `git log`.

## 7. Estado do desenvolvimento

### Concluído

- Visão inicial do produto.
- Planejamento macro.
- Decisão arquitetural inicial.
- Confirmação do ambiente.
- Criação do diretório raiz.
- Inicialização do Git.
- Configuração da branch main.
- Criação da estrutura documental.
- Criação dos arquivos iniciais.

### Em andamento

DEV-001 — Foundation.

Subtarefa ativa:

DEV-001.1 — Repository Setup.

### Pendente

- Revisar e preencher os documentos Markdown.
- Preparar primeiro commit.
- Criar projeto macOS no Xcode.
- Configurar arquitetura inicial.
- Implementar inicialização do aplicativo.
- Implementar MenuBarExtra.
- Configurar testes.
- Validar build.

## 8. Próxima ação

Finalizar a documentação inicial:

1. Revisar ROADMAP.md.
2. Revisar DEV-001-foundation.md.
3. Revisar ADR-001-architecture.md.
4. Revisar SESSION_CONTEXT.md.
5. Conferir os arquivos do repositório.
6. Executar git status.
7. Realizar o primeiro commit.

Após isso, iniciar DEV-001.2 — Project Setup.

## 9. Metodologia de trabalho

O desenvolvedor possui experiência prévia com:
- Desenvolvimento web.
- Git e GitHub.
- Versionamento de código.
- UIKit.

Está aprofundando conhecimentos em:
- Swift.
- SwiftUI.
- Ecossistema Apple.
- Arquitetura de aplicações nativas macOS.

Portanto:
- Não explicar conceitos básicos de Git sem necessidade.
- Acelerar operações rotineiras de repositório.
- Aprofundar explicações sobre Swift, SwiftUI e decisões arquiteturais.
- O desenvolvedor prefere escrever o código manualmente.
- Fornecer trechos de código e explicar seu funcionamento.
- Avançar de forma incremental.
- Responder dúvidas técnicas conforme surgirem.

## 10. Regras para continuidade por outra IA

Antes de iniciar qualquer atividade:

1. Ler este documento.
2. Ler ROADMAP.md.
3. Ler a task ativa.
4. Ler ADRs relevantes.
5. Verificar o estado real do repositório.
6. Não presumir que atividades foram executadas.
7. Não declarar builds ou testes como concluídos sem evidências.
8. Atualizar a documentação após cada sessão.

A documentação do projeto prevalece sobre qualquer contexto inferido do histórico de conversas.
