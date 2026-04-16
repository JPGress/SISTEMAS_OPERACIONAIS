# 🐧 COM104 — Aula 11: Atividade Prática de Shell Script

**Disciplina:** Sistemas Operacionais  
**Prof:** João Pedro Gress  
**Tema:** Administração básica de sistemas Linux e comandos essenciais  

---

> [!NOTE]
> Todos os scripts devem ser criados com a extensão `.sh`, começar com `#!/bin/bash` (shebang) e receber permissão de execução com `chmod +x nome_do_script.sh` antes de rodar.

---

## 📋 Nível Fácil — Exercícios Práticos

---

### Exercício 1 — Meu Primeiro Script (`saudacao.sh`)

**Objetivo:** Criar um script que exiba uma mensagem de saudação personalizada usando `echo` e `read`.

**Instruções:**

1. Crie o arquivo `saudacao.sh`.
2. O script deve:
   - Exibir a mensagem `"Bem-vindo ao sistema Linux!"`.
   - Perguntar o nome do usuário usando `read -p`.
   - Exibir: `"Olá, <nome>! Hoje é <data_atual>."` — use o comando `date` para obter a data.

**Exemplo de saída esperada:**
```
Bem-vindo ao sistema Linux!
Digite seu nome: Maria
Olá, Maria! Hoje é 16/04/2026.
```

**Dicas:**
- Use `date +%d/%m/%Y` para formatar a data.
- Armazene a data em uma variável antes de usar no `echo`.

---

### Exercício 2 — Calculadora de Soma (`soma.sh`)

**Objetivo:** Criar um script que receba dois números como **parâmetros de linha de comando** e exiba a soma.

**Instruções:**

1. Crie o arquivo `soma.sh`.
2. O script deve:
   - Receber dois números via `$1` e `$2`.
   - Calcular a soma usando `$(( ))`.
   - Exibir: `"A soma de <n1> + <n2> é: <resultado>"`.

**Exemplo de execução:**
```bash
./soma.sh 15 27
```
**Saída:**
```
A soma de 15 + 27 é: 42
```

**Dicas:**
- `$1` é o primeiro argumento, `$2` é o segundo.
- A aritmética no Bash é feita com `$(( expressão ))`.

---

### Exercício 3 — Explorador de Variáveis (`variaveis.sh`)

**Objetivo:** Criar um script que explore e exiba variáveis de ambiente do sistema.

**Instruções:**

1. Crie o arquivo `variaveis.sh`.
2. O script deve exibir, de forma organizada:
   - O nome do usuário logado (`$USER` ou `whoami`).
   - O diretório home (`$HOME`).
   - O Shell em uso (`$SHELL`).
   - O diretório atual (`$PWD`).
   - O hostname da máquina (`$HOSTNAME` ou o comando `hostname`).

**Exemplo de saída esperada:**
```
===== INFORMAÇÕES DO SISTEMA =====
Usuário......: maria
Home.........: /home/maria
Shell........: /bin/bash
Diretório....: /home/maria/scripts
Hostname.....: maquina-linux
==================================
```

**Dica:** Use `echo` com aspas duplas para expandir as variáveis.

---

### Exercício 4 — Verificador de Arquivo (`verificar.sh`)

**Objetivo:** Criar um script que receba o nome de um arquivo como parâmetro e verifique se ele existe, qual o tipo e quais permissões ele tem.

**Instruções:**

1. Crie o arquivo `verificar.sh`.
2. O script deve receber o caminho/nome do arquivo via `$1`.
3. Utilize testes condicionais (`[[ ]]` ou `test`) para verificar:
   - Se é um arquivo regular (`-f`)
   - Se é um diretório (`-d`)
   - Se tem permissão de leitura (`-r`)
   - Se tem permissão de escrita (`-w`)
   - Se tem permissão de execução (`-x`)
4. Exiba os resultados na tela.

**Exemplo de execução:**
```bash
./verificar.sh /etc/passwd
```
**Saída:**
```
Verificando: /etc/passwd
[✓] É um arquivo regular
[✗] Não é um diretório
[✓] Tem permissão de leitura
[✗] Não tem permissão de escrita
[✗] Não tem permissão de execução
```

**Dicas:**
- Use `[[ -f "$1" ]]` seguido de `&& echo "[✓]..." || echo "[✗]..."`.
- Lembre-se: o `$?` retorna 0 para verdadeiro e 1 para falso.

---

### Exercício 5 — Parâmetros Especiais (`parametros.sh`)

**Objetivo:** Criar um script que demonstre o uso de variáveis especiais (`$0`, `$#`, `$@`, `$$`, `$?`).

**Instruções:**

1. Crie o arquivo `parametros.sh`.
2. Passe vários argumentos ao executar o script.
3. O script deve exibir:
   - O nome do script (`$0`)
   - A quantidade de parâmetros recebidos (`$#`)
   - A lista completa de parâmetros (`$@`)
   - O PID do shell atual (`$$`)
   - O status de saída do último comando (`$?`)

**Exemplo de execução:**
```bash
./parametros.sh linux shell bash script
```
**Saída:**
```
Nome do script...: ./parametros.sh
Nº de parâmetros.: 4
Parâmetros.......: linux shell bash script
PID do shell.....: 12345
Status anterior..: 0
```

---

### Exercício 6 — Confirmação Interativa (`continuar.sh`)

**Objetivo:** Criar um script que peça confirmação antes de executar uma ação.

**Instruções:**

1. Crie o arquivo `continuar.sh`.
2. O script deve:
   - Perguntar: `"Deseja listar os processos do sistema? [s/n]"`.
   - Se a resposta for `s`, executar `ps aux | head -20`.
   - Se a resposta for `n`, exibir `"Operação cancelada."` e encerrar com `exit`.
   - Se a resposta for qualquer outra coisa, exibir `"Opção inválida."`.

**Dicas:**
- Combine `read` com `test` ou `[[ ]]`.
- Lembre-se da sintaxe: `[[ "$resposta" == "s" ]] && comando`.

---

## 🔥 Desafio de Nível Médio — Monitor de Processos (`monitor.sh`)

> [!IMPORTANT]
> Este desafio combina múltiplos conceitos da aula: variáveis, `read`, parâmetros, testes condicionais, `ps`, `grep`, `date`, redirecionamento e execução em background.

**Objetivo:** Criar um script interativo de monitoramento de processos do sistema.

**Instruções:**

1. Crie o arquivo `monitor.sh`.
2. O script deve apresentar um **menu interativo** com as seguintes opções:

```
========================================
   MONITOR DE PROCESSOS — Linux v1.0
========================================
  [1] Listar todos os processos ativos
  [2] Buscar processo por nome
  [3] Exibir informações do sistema
  [4] Encerrar um processo por PID
  [5] Exportar relatório do sistema
  [0] Sair
========================================
Escolha uma opção:
```

3. **Funcionalidade de cada opção:**

| Opção | Comportamento |
|-------|---------------|
| **1** | Executa `ps aux` e exibe na tela (use `head -30` para limitar a saída) |
| **2** | Pergunta o nome do processo e executa `ps aux \| grep <nome>` |
| **3** | Exibe: usuário logado, hostname, data/hora, uptime, Shell em uso e total de processos ativos (use `ps aux \| wc -l`) |
| **4** | Pergunta o PID e exibe uma confirmação antes de tentar encerrar com `kill`. **Não use** `kill -9` diretamente — primeiro tente `kill <pid>` e informe se funcionou com `$?` |
| **5** | Gera um arquivo `relatorio_<data>.txt` com a saída da opção 3 + lista de processos. Use `date +%d%m%Y_%H%M%S` no nome do arquivo |
| **0** | Exibe `"Encerrando monitor..."` e sai do script |

4. **Requisitos adicionais:**
   - O menu deve **repetir após cada operação** até o usuário escolher `0` (use um **loop** — pesquise sobre `while true` e `case`).
   - Use **variáveis** para armazenar valores como data, nome do usuário e contagem de processos.
   - Toda entrada inválida deve exibir: `"Opção inválida. Tente novamente."`.
   - Comente o código com `#` para explicar cada bloco.

5. **Bônus (opcional):**
   - Adicione cores ao menu usando códigos ANSI (ex: `\e[1;32m` para verde).
   - Permita que o script receba o nome de um processo como **parâmetro** (`$1`). Se recebido, pule direto para a opção 2.

---

### 📝 Critérios de Avaliação

| Critério | Peso |
|----------|------|
| Script executa sem erros | 30% |
| Uso correto de variáveis e echo | 20% |
| Uso de `read`, parâmetros e testes | 20% |
| Organização e comentários no código | 15% |
| Desafio completo e funcional | 15% |

---

### 📚 Referências da Aula

- Shell e tipos de shells: `/etc/shells`, `/etc/passwd`
- Processos: `ps`, `ps aux`, `ps -f`, `pstree -p`, `kill`, `kill -9`
- Variáveis: `$HOME`, `$USER`, `$SHELL`, `$PATH`, `$$`, `$?`, `$#`, `$@`
- Comandos: `echo`, `read`, `date`, `whoami`, `grep`, `test`, `chmod`
- Redirecionamento: `>`, `>>`, `2>&1`, `|`

---

> [!TIP]
> Para testar seus scripts rapidamente, use `bash -x script.sh` — isso mostra cada comando sendo executado, facilitando a depuração.

---

**Boa prática!** 🚀
