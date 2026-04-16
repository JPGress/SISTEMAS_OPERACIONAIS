# 🐧 Sistemas Operacionais - COM104

Repositório de materiais didáticos e recursos para a disciplina de **Sistemas Operacionais** do curso de Engenharia de Software.

**Instituição:** IESGO  
**Professor:** João Pedro Gress  
**Período:** 2025.1  
**Carga Horária:** 72 horas  

---

## 📋 Sobre a Disciplina

Esta disciplina aborda os **conceitos fundamentais de Sistemas Operacionais**, com foco em:

- Arquitetura e funcionamento de sistemas operacionais
- Gerenciamento de processos e threads
- Escalonamento de CPU
- Gerenciamento de memória
- Sistemas de arquivos
- Entrada/Saída (I/O)
- Sincronização e deadlocks
- **Shell Scripting para automação de tarefas**
- Administração de sistemas Linux

### Abordagem Prática

Além da teoria, a disciplina inclui:
- 📝 **20 aulas expositivas** com slides e infográficos
- 🐚 **Shell scripts práticos** para automação
- 💻 **Laboratórios hands-on** no Linux
- 📊 **Avaliações formativas** (B1 e B2)
- 🎯 **Projetos práticos** de desenvolvimento

---

## 📁 Estrutura do Repositório

```
SISTEMAS_OPERACIONAIS_-_COM104/
│
├── Aula_01/ ... Aula_20/          ← Slides e materiais de cada aula
│   └── COM104_AXX.pdf
│
├── Material_Complementar/           ← PDFs teóricos e referências
│   └── [Livros, artigos, manuais]
│
├── Avaliacoes/                      ← Provas e testes
│   ├── B1/                          ← 1ª Avaliação
│   └── B2/                          ← 2ª Avaliação
│
├── Trabalhos_e_Seminarios/         ← Projetos e trabalhos práticos
│
└── README.md                        ← Este arquivo
```

---

## 🎯 Objetivos de Aprendizagem

Ao final da disciplina, o aluno será capaz de:

✅ Entender a arquitetura interna de sistemas operacionais  
✅ Compreender gerenciamento de processos, memória e I/O  
✅ Implementar scripts shell para automação de tarefas  
✅ Administrar e configurar sistemas Linux  
✅ Resolver problemas de sincronização e deadlocks  
✅ Projetar e implementar pequenos SO educacionais  

---

## 📚 Conteúdo Programático

### Unidade I: Fundamentos de SO
- **Aula 01-02:** Introdução e Conceitos Básicos
- **Aula 03-04:** Arquitetura e Estrutura de SO
- **Aula 05-06:** Processos e Threads

### Unidade II: Gerenciamento de Recursos
- **Aula 07-09:** Escalonamento de CPU
- **Aula 10-12:** Gerenciamento de Memória
- **Aula 13-14:** Sistemas de Arquivos

### Unidade III: Sincronização e I/O
- **Aula 15-16:** Sincronização e Deadlocks
- **Aula 17-18:** Entrada/Saída
- **Aula 19-20:** Administração e Shell Script

---

## 🐚 Destaque: Shell Scripting

A **Aula 11** é dedicada a **Shell Scripting avançado**, cobrindo:

- Variáveis e escopo
- Parâmetros posicionais e especiais
- Expressões aritméticas
- Testes e condicionais
- Loops (while, for, until)
- Funções e argumentos
- Redirecionamento de entrada/saída

### Material Interativo

Para melhor aprendizado, consulte:

- **[COM104_A11_v2.0_FINAL](https://github.com/seu-username/seu-repo/tree/main/Aula_11)**
  - Apresentação interativa com 38 slides
  - 6 infográficos profissionais
  - 3 PDFs teóricos complementares
  - Scripts executáveis com gabarito
  - Atividades práticas com soluções

---

## 📖 Como Usar Este Repositório

### Para Alunos

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-username/COM104-Sistemas-Operacionais.git
   cd COM104-Sistemas-Operacionais
   ```

2. **Acesse os materiais de cada aula:**
   ```bash
   cd Aula_XX
   ```

3. **Para as aulas com Shell Script:**
   ```bash
   cd Aula_11
   chmod +x *.sh
   ./COM104_A11_gabarito.sh    # Executa o gabarito interativo
   ```

4. **Estude o Material Complementar** para aprofundar conhecimentos

5. **Pratique com os exercícios** em `Trabalhos_e_Seminarios/`

### Para Instrutores

- Customize os slides conforme necessário
- Use os scripts como base para laboratórios
- Adapte os exercícios ao seu cronograma
- Compartilhe recursos adicionais em `Material_Complementar/`

---

## 🔧 Pré-requisitos

- **Sistema Operacional:** Linux (Ubuntu 20.04+ recomendado)
- **Shell:** Bash 4.0+
- **Ferramentas:**
  - `git` para clonar o repositório
  - Editor de texto (VS Code, Vim, nano)
  - Terminal Unix

### Instalação Rápida (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install git build-essential man-pages
```

---

## 💡 Recursos Extras

### Documentação Oficial
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Linux Kernel Documentation](https://www.kernel.org/doc/)
- [The Linux Programming Interface](https://man7.org/tlpi/)

### Tutoriais Interativos
- [Learn Shell](https://www.learnshell.org/)
- [ShellScript.sh](https://www.shellscript.sh/)
- [Linux Academy](https://linuxacademy.com/)

### Referência Rápida
- [Bash Cheat Sheet](https://cheatography.com/takenalready/cheat-sheets/shell-script/)
- [Man Pages Online](https://man7.org/)

---

## 📊 Avaliações

### Critérios de Avaliação

| Componente | Peso | Descrição |
|-----------|------|-----------|
| Participação | 10% | Presença e envolvimento em aula |
| Atividades | 15% | Exercícios práticos e listas |
| B1 (1ª Avaliação) | 35% | Prova de conteúdo até Aula 10 |
| B2 (2ª Avaliação) | 35% | Prova final + Projeto prático |
| Trabalho Final | 5% | Projeto de SO ou tema relacionado |

### Média Final

```
Média = (Participação × 0.10) + (Atividades × 0.15) + 
        (B1 × 0.35) + (B2 × 0.35) + (Trabalho × 0.05)
```

**Aprovação:** Média ≥ 7.0  
**Recuperação:** Se Média 5.0-6.9, fazer prova de recuperação

---

## 🤝 Contribuições

Este repositório é mantido pelo professor João Pedro Gress (IESGO).

**Sugestões e melhorias** são bem-vindas! Se encontrar:
- ❌ Erros nos materiais
- 📝 Sugestões de conteúdo
- 🐛 Problemas técnicos nos scripts

Entre em contato:
- 📧 Email: jpgress@iesgo.edu.br
- 💬 Issues: Abra uma issue no GitHub

---

## 📄 Licença

Este material é fornecido para fins **educacionais** sob licença **Creative Commons BY-NC-SA 4.0**.

**Você pode:**
- ✅ Copiar e compartilhar
- ✅ Adaptar e modificar
- ✅ Usar em fins educacionais

**Sob as condições:**
- ⚠️ Creditar o autor original
- ⚠️ Não usar comercialmente
- ⚠️ Compartilhar com a mesma licença

[Leia a licença completa](https://creativecommons.org/licenses/by-nc-sa/4.0/)

---

## 📞 Suporte e Contato

**Professor:** João Pedro Gress  
**Email:** jpgress@iesgo.edu.br  
**Instituição:** Instituto de Ensino Superior de Goiás (IESGO)  
**Campus:** Formosa, GO  

### Horário de Atendimento

- Por agendamento: `jpgress@iesgo.edu.br`

---

## 📅 Cronograma (2025.1)

| Período | Atividade |
|---------|-----------|
| Semanas 1-5 | Aulas 1-7 (Fundamentos) |
| Semana 6 | **B1 - Prova** |
| Semanas 7-10 | Aulas 8-14 (Recursos) |
| Semana 11 | **B2 - Prova** |
| Semanas 12-14 | Aulas 15-20 (Sincronização e I/O) |
| Semana 15 | Apresentação de Projetos |
| Semana 16 | Recuperação e Menção |

---

## 🚀 Iniciando

```bash
# Clone o repositório
git clone https://github.com/seu-username/COM104-Sistemas-Operacionais.git

# Entre no diretório
cd COM104-Sistemas-Operacionais

# Veja o conteúdo disponível
ls -la Aula_01/

# Para a Aula 11 (Shell Script)
cd Aula_11
bash COM104_A11_gabarito.sh
```

---

## ✨ Principais Características

🎓 **Teórico-Prático:** Equilíbrio entre conceitos e implementação  
📱 **Multiplataforma:** Funciona em qualquer distribuição Linux  
🔄 **Sempre Atualizado:** Material revisado a cada semestre  
🎯 **Focado em Competências:** Alinha com padrões da indústria  
🌐 **Código Aberto:** Reutilizável e adaptável  

---

**Última atualização:** 16 de Abril de 2025  
**Versão:** 2.0  
**Status:** ✅ Ativo - Atualizações contínuas

---

