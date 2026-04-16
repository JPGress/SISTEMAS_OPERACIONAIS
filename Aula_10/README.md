# 📚 Aula 11: Shell Script - COM104

## Bem-vindo à Apresentação Interativa! 🎉

**Curso:** Sistemas Operacionais - COM104  
**Professor:** João Pedro Gress  
**Instituição:** IESGO  
**Período:** 2026.1  
**Tema:** Variáveis, Expressões, Testes e Parâmetros em Shell Script

---

## 🚀 Como Usar Esta Apresentação

### Opção 1: Visualizar no Navegador (Recomendado)

1. **Localize o arquivo:** `index_v2.html`
2. **Abra com seu navegador preferido** (Chrome, Firefox, Safari, Edge)
   - Clique duplo no arquivo, OU
   - Arraste para uma aba aberta do navegador, OU
   - Clique direito → "Abrir com" → escolha seu navegador

3. **Pronto!** A apresentação carregará com:
   - ✅ 38 slides de aula
   - ✅ 6 infográficos interativos
   - ✅ Navegação completa
   - ✅ Busca de tópicos

### Opção 2: Baixar para Computador

1. Copie toda a pasta `COM104_A11_v2.0_FINAL/`
2. Coloque onde preferir no seu computador
3. Abra `index_v2.html` no navegador (funciona offline)

---

## 🎮 Controles de Navegação

| Ação | Como Fazer |
|------|-----------|
| **Ir para próximo slide** | Clique em "Próximo →" OU Tecla Seta → |
| **Ir para slide anterior** | Clique em "← Anterior" OU Tecla Seta ← |
| **Ir para slide específico** | Digite o número na caixa e pressione Enter |
| **Visualizar infográfico** | Clique em qualquer item em "📊 Infográficos v2.0" |
| **Fechar infográfico** | Clique no ✕ OU pressione Escape |
| **Buscar tópico** | Digite na caixa "Buscar slide..." |

---

## 📖 Estrutura dos Slides

A aula está organizada em **8 seções temáticas**:

### 1️⃣ Variáveis (Slides 1-5)
- Conceitos fundamentais
- Armazenamento em memória
- Proteção de caracteres

### 2️⃣ Shell Script (Slides 6-10)
- O que é Shell Script
- Estrutura básica
- Comandos echo e date

### 3️⃣ Variáveis Avançado (Slides 11-14)
- Sintaxe e nomenclatura
- Saída de comandos
- Escopo de variáveis

### 4️⃣ Expressões & Testes (Slides 15-21)
- Aritmética
- Comparações
- Operadores lógicos
- Testes de arquivo

### 5️⃣ Comando READ (Slides 22-26)
- Leitura de entrada
- Parâmetros úteis
- Testes condicionais
- Aplicações práticas

### 6️⃣ Parâmetros (Slides 27-30)
- Parâmetros posicionais
- Comando SHIFT
- Parâmetros especiais ($#, $@, $?, $$)

### 7️⃣ Exemplos Práticos (Slides 31-38)
- Scripts prontos para usar
- Soma simples
- Validação
- Backup automático
- Processamento de argumentos

---

## 📊 Infográficos Disponíveis

Clique em qualquer um para visualizar em tamanho grande:

### 1. Anatomia do Linux - Shell e Gestão de Processos
Mostra a estrutura completa do Linux com Shell, Kernel e Hardware integrados

### 2. Anatomia da Memória e Processos
Hierarquia de memória: Cache, RAM, Disco e layout de processos

### 3. Anatomia do Sistema de Arquivos
Estrutura de inodes, VFS e blocos de dados no Linux

### 4. Ciclo de Vida de um Processo
Estados de processo: Criação, Execução, Bloqueio e Término

### 5. Anatomia do Sistema Operacional
Estrutura em camadas: Userspace → Shell → Kernel → Hardware

### 6. Escalonamento: Algoritmos de CPU
Comparativo dos algoritmos: Round Robin, Priority-Based, CFS, FCFS, SJF

---

## 📁 Arquivos Nesta Pasta

```
COM104_A11_v2.0_FINAL/
│
├── 📄 index_v2.html                  ← ABRA ESTE ARQUIVO! 
├── 📄 README_ALUNOS.md               ← Este arquivo
├── 📄 COM104_A11_slides.json         ← Base de dados (não editar)
│
├── 📂 slides/                        ← 38 slides PNG (1920×1080)
│   ├── slide_01.png
│   ├── slide_02.png
│   └── ... slide_38.png
│
├── 📂 infograficos/                  ← 6 infográficos de alta qualidade
│   ├── 01_anatomia_linux_shell.png
│   ├── 02_anatomia_memoria.png
│   ├── 03_anatomia_filesystem.png
│   ├── 04_ciclo_vida_processo.png
│   ├── 05_arquitetura_so.png
│   └── 06_escalonamento_cpu.png
│
├── 📂 materiais_teoricos/            ← 3 PDFs de suporte
│   ├── Linux_Shell_Mastery.pdf
│   ├── Linux_Systems_Mastery.pdf
│   └── The_Linux_Architecture_and_Philosophy.pdf
│
└── 📂 documentacao/                  ← Materiais adicionais
    ├── V2_COMPLETA.md
    ├── CHANGELOG_V2.0.md
    ├── GUIA_MATERIAIS.md
    └── outros...
```

---

## 💡 Dicas de Estudo

### 📖 Fluxo Recomendado
1. **Assista aos slides** (1-38) na ordem
2. **Clique nos infográficos** quando aparecerem tópicos relacionados
3. **Leia os PDFs** para aprofundar
4. **Refaça os exemplos** em seu terminal (slides 31-38)

### 🖥️ Prática Recomendada
- Abra um terminal enquanto assiste
- Digite os comandos mostrados nos slides
- Experimente modificar os scripts
- Tente criar seus próprios scripts

### 📝 Tópicos-Chave a Lembrar
- ✅ Variáveis são posições de memória com nome
- ✅ Shell Script automatiza tarefas repetitivas
- ✅ `[ ]` testa condições simples, `[[ ]]` é mais robusto
- ✅ `$#` = número de argumentos, `$@` = todos os argumentos
- ✅ `read` captura entrada do usuário
- ✅ `$(comando)` substitui saída de comando

---

## 🏋️ Atividades e Gabaritos

Esta pasta também inclui materiais práticos para você exercitar o que aprendeu:

### 📝 Atividade Prática
**Arquivo:** `COM104_A11_atividade_shell.md`

Contém exercícios práticos organizados por nível:
- ⭐ **Nível Fácil** — Scripts básicos com `echo`, `read`, variáveis
- ⭐⭐ **Nível Médio** — Condicionais, loops, testes
- ⭐⭐⭐ **Nível Avançado** — Funções, processamento de argumentos, tratamento de erros

**Como usar:**
1. Abra o arquivo `COM104_A11_atividade_shell.md`
2. Escolha um exercício do seu nível
3. Abra um terminal e crie o script
4. Teste e compare com o gabarito

### 💡 Gabarito em Markdown
**Arquivo:** `COM104_A11_gabarito_shell.md`

Contém as **soluções explicadas** de todos os exercícios:
- Código comentado
- Explicação do que cada linha faz
- Variações e melhorias possíveis

**Como usar:**
1. Tente resolver o exercício primeiro
2. Consulte este arquivo para ver a solução
3. Estude a explicação para entender o conceito

### 🔧 Gabarito em Script
**Arquivo:** `COM104_A11_gabarito.sh`

Script executável com todas as soluções:
- Pode rodar diretamente no terminal
- Mostra exemplos práticos funcionando
- Excelente para entender o resultado esperado

**Como usar:**
```bash
chmod +x COM104_A11_gabarito.sh
./COM104_A11_gabarito.sh
```

---

## 🤔 Dúvidas Frequentes

### P: O arquivo não abre
**R:** Certifique-se de que todos os arquivos estão na mesma pasta. O navegador precisa acessar `slides/`, `infograficos/`, etc.

### P: As imagens não carregam
**R:** Verifique se as pastas `slides/` e `infograficos/` existem com os arquivos PNG dentro.

### P: Como faço para imprimir os slides?
**R:** Use Ctrl+P no navegador e escolha "Salvar como PDF" ou "Imprimir".

### P: Posso compartilhar com outros alunos?
**R:** Sim! Copie toda a pasta `COM104_A11_v2.0_FINAL/` e envie.

### P: Como vejo os PDFs?
**R:** Abra os arquivos em `materiais_teoricos/` com qualquer leitor de PDF (Adobe Reader, navegador, etc.)

---

## 🎓 Aprendizado Esperado

Após completar esta aula, você será capaz de:

✅ Entender conceitos de variáveis e escopo  
✅ Escrever scripts Shell básicos  
✅ Usar testes e expressões aritméticas  
✅ Capturar entrada do usuário com `read`  
✅ Trabalhar com parâmetros em scripts  
✅ Criar scripts práticos e úteis  
✅ Entender como o Shell se comunica com o Kernel  

---

## 📞 Contato e Suporte

**Professor:** João Pedro Gress  
**Email:** jpgress@iesgo.edu.br  
**Disciplina:** Sistemas Operacionais - COM104

Para dúvidas ou sugestões sobre o material, entre em contato com o professor.

---

## ✨ Recursos Extras

- **Documentação oficial bash:** https://www.gnu.org/software/bash/manual/
- **Tutorial interativo:** https://www.learnshell.org/
- **Exercícios práticos:** https://www.shellscript.sh/
- **Referência rápida:** https://cheatography.com/takenalready/cheat-sheets/shell-script/

---

## 🎯 Versão e Informações

**Versão:** 2.0  
**Data:** 16/04/2026  
**Slides:** 38  
**Infográficos:** 6  
**PDFs:** 3  
**Tamanho Total:** ~92 MB  

**Gerado com NotebookLM** - Infográficos profissionais baseados em 103+ fontes sobre Sistemas Operacionais.

---

**Bom estudo! 🚀 Aproveite a apresentação!**
