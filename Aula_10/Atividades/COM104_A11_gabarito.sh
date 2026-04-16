#!/bin/bash
# ╔══════════════════════════════════════════════════════════════════════╗
# ║        COM104 — Aula 11: GABARITO DIDÁTICO EM SHELL SCRIPT         ║
# ║  Disciplina: Sistemas Operacionais | Prof: João Pedro Gress        ║
# ║  Tema: Administração básica de sistemas Linux e comandos essenciais ║
# ╚══════════════════════════════════════════════════════════════════════╝
#
# COMO USAR ESTE ARQUIVO:
#   1. Dê permissão de execução:  chmod +x COM104_A11_gabarito.sh
#   2. Execute:                   ./COM104_A11_gabarito.sh
#   3. Siga o menu interativo para navegar pelos exercícios
#
# Cada exercício é uma FUNÇÃO separada. Leia os comentários com atenção:
# eles ensinam o PORQUÊ de cada linha, não apenas o que ela faz.
#
# DICA DE ESTUDO: Execute com  bash -x COM104_A11_gabarito.sh
# O -x mostra cada comando sendo executado, ajudando na depuração.
# ======================================================================


# ======================================================================
# CORES ANSI — Deixam o terminal colorido e mais legível
# ======================================================================
#
# COMO FUNCIONA:
#   \e[  → inicia uma sequência de escape (instrução especial pro terminal)
#   1;   → ativa o modo NEGRITO
#   32m  → define a cor (32 = verde, 33 = amarelo, 31 = vermelho, etc.)
#   \e[0m → RESETA tudo (volta ao padrão)
#
# Guardamos em variáveis para não repetir os códigos toda hora.
# Convenção: variáveis de configuração ficam em MAIÚSCULAS.

VERDE='\e[1;32m'
AMARELO='\e[1;33m'
VERMELHO='\e[1;31m'
CIANO='\e[1;36m'
MAGENTA='\e[1;35m'
BRANCO='\e[1;37m'
RESET='\e[0m'       # Remove toda formatação


# ======================================================================
# FUNÇÃO AUXILIAR: separador visual
# ======================================================================
# Funções no Bash são definidas com:  nome_da_funcao() { comandos; }
# São chamadas apenas pelo nome, SEM parênteses: separador
#
# Por que criar funções?
#   → Evita repetição de código (DRY: Don't Repeat Yourself)
#   → Organiza o script em blocos lógicos
#   → Facilita manutenção e leitura

separador() {
    echo ""
    echo -e "${CIANO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
    echo ""
}

# Função que pausa e espera o aluno pressionar Enter antes de continuar
pausar() {
    echo ""
    read -p "    ↵ Pressione ENTER para continuar..." _
    # O _ é uma variável "descartável" — não vamos usar o valor.
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 1 — saudacao.sh                       ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_1() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 1 — saudacao.sh                         ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: echo, read, variáveis, date, \$()       ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 1: O COMANDO echo
    # ──────────────────────────────────────────────────────────────
    # echo = "ecoar", imprimir texto na tela (saída padrão).
    # É o equivalente ao print() do Python ou printf() do C.
    # Quando usamos aspas duplas "", variáveis dentro delas são
    # SUBSTITUÍDAS pelo seu valor. Exemplo:
    #   nome="João"
    #   echo "Olá, $nome"  →  Olá, João
    #   echo 'Olá, $nome'  →  Olá, $nome   (aspas simples NÃO expandem)
    # O -e ativa interpretação de caracteres especiais como \n (nova linha)

    echo -e "${VERDE}📖 Lição 1: Comando echo${RESET}"
    echo "  • O 'echo' imprime texto na tela (saída padrão)"
    echo "  • Aspas duplas expandem variáveis: \$nome → valor"
    echo "  • Aspas simples são literais: \$nome → \$nome"
    echo ""

    echo "Bem-vindo ao sistema Linux!"

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 2: O COMANDO read
    # ──────────────────────────────────────────────────────────────
    # read = lê uma entrada do teclado e armazena em uma variável.
    # -p "texto" = exibe um prompt na MESMA LINHA (sem pular).
    # Sintaxe: read -p "mensagem" nome_da_variavel
    #
    # O que acontece internamente:
    #   1. O script PAUSA e espera o usuário digitar
    #   2. O usuário digita e pressiona ENTER
    #   3. O texto digitado é armazenado na variável informada

    echo -e "${VERDE}📖 Lição 2: Comando read${RESET}"
    echo "  • 'read -p' captura entrada do usuário"
    echo "  • O -p coloca a pergunta na mesma linha (sem quebra)"
    echo ""

    read -p "Digite seu nome: " nome

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 3: CAPTURAR SAÍDA DE COMANDOS COM $( )
    # ──────────────────────────────────────────────────────────────
    # $( comando ) executa o comando e SUBSTITUI pelo resultado.
    # É como dizer: "execute isto e me dê o texto que saiu".
    #
    # Exemplo:
    #   DATA=$(date +%d/%m/%Y)
    #   → Executa 'date +%d/%m/%Y'
    #   → O resultado (ex: "16/04/2026") é guardado na variável DATA
    #
    # Forma antiga (equivalente): DATA=`date +%d/%m/%Y`  (com crases)
    # A forma com $() é PREFERIDA porque é mais legível e permite aninhamento.
    #
    # FORMATAÇÃO do date:
    #   %d = dia (01-31)
    #   %m = mês (01-12)
    #   %Y = ano com 4 dígitos (2026)
    #   %H = hora, %M = minuto, %S = segundo

    echo ""
    echo -e "${VERDE}📖 Lição 3: Captura de saída com \$( )${RESET}"
    echo "  • \$(comando) executa e substitui pelo resultado"
    echo "  • date +%d/%m/%Y formata a data como dia/mês/ano"
    echo ""

    DATA=$(date +%d/%m/%Y)

    # Resultado final — aspas duplas permitem expandir $nome e $DATA
    echo "Olá, $nome! Hoje é $DATA."

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo saudacao.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  echo "Bem-vindo ao sistema Linux!"'
    echo '  read -p "Digite seu nome: " nome'
    echo '  DATA=$(date +%d/%m/%Y)'
    echo -e '  echo "Olá, $nome! Hoje é $DATA."'"${RESET}"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 2 — soma.sh                           ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_2() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 2 — soma.sh                              ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: parâmetros posicionais, aritmética       ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 4: PARÂMETROS POSICIONAIS ($1, $2, ...)
    # ──────────────────────────────────────────────────────────────
    # Quando você executa: ./soma.sh 15 27
    #   $0 = "./soma.sh"   (nome do script)
    #   $1 = "15"          (primeiro argumento)
    #   $2 = "27"          (segundo argumento)
    #
    # Esses valores são criados AUTOMATICAMENTE pelo Bash.
    # Você NÃO precisa declará-los — eles já existem quando
    # o script é chamado com argumentos.
    #
    # IMPORTANTE: $1 e $2 são TEXTO (string), não números!
    # O Bash trata tudo como texto por padrão.
    # Para fazer contas, precisamos do contexto aritmético.

    echo -e "${VERDE}📖 Lição 4: Parâmetros posicionais${RESET}"
    echo "  • \$1, \$2, ... são argumentos da linha de comando"
    echo "  • \$0 é sempre o nome do próprio script"
    echo ""

    # Como estamos num gabarito interativo, vamos simular com read
    read -p "Digite o primeiro número: " NUM1
    read -p "Digite o segundo número: " NUM2

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 5: ARITMÉTICA COM $(( ))
    # ──────────────────────────────────────────────────────────────
    # $(( expressão )) = contexto aritmético
    # Dentro dele, o Bash trata variáveis como NÚMEROS.
    #
    # Operadores disponíveis:
    #   +   → soma
    #   -   → subtração
    #   *   → multiplicação
    #   /   → divisão INTEIRA (sem decimais)
    #   %   → módulo (resto da divisão)
    #   **  → exponenciação (2**3 = 8)
    #
    # Exemplo:
    #   RESULTADO=$(( 15 + 27 ))   → RESULTADO = 42
    #   RESULTADO=$(( $1 + $2 ))   → soma os dois argumentos
    #
    # ATENÇÃO: O Bash só faz contas com INTEIROS.
    #          Para decimais, use bc: echo "5.2 + 3.1" | bc

    echo ""
    echo -e "${VERDE}📖 Lição 5: Aritmética com \$(( ))${RESET}"
    echo "  • \$(( expressão )) ativa o modo aritmético"
    echo "  • Dentro dele, variáveis são tratadas como números"
    echo ""

    RESULTADO=$(( NUM1 + NUM2 ))

    echo "A soma de $NUM1 + $NUM2 é: $RESULTADO"

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo soma.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  RESULTADO=$(( $1 + $2 ))'
    echo -e '  echo "A soma de $1 + $2 é: $RESULTADO"'"${RESET}"
    echo ""
    echo -e "${AMARELO}EXECUÇÃO:${RESET}  ./soma.sh 15 27"
    echo -e "${AMARELO}SAÍDA:${RESET}     A soma de 15 + 27 é: 42"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 3 — variaveis.sh                      ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_3() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 3 — variaveis.sh                         ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: variáveis de ambiente, aspas             ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 6: VARIÁVEIS DE AMBIENTE
    # ──────────────────────────────────────────────────────────────
    # Variáveis de ambiente são PRÉ-DEFINIDAS pelo sistema quando
    # você faz login. Elas configuram o seu ambiente de trabalho.
    #
    # São carregadas a partir de arquivos como:
    #   /etc/profile    → configurações globais (todos os usuários)
    #   ~/.bashrc       → configurações pessoais (só seu usuário)
    #   /etc/passwd     → define o shell padrão de cada usuário
    #
    # CONVENÇÃO: variáveis de ambiente são escritas em MAIÚSCULAS.
    # O Bash é CASE-SENSITIVE: $HOME ≠ $home ≠ $Home
    #
    # PRINCIPAIS VARIÁVEIS:
    #   $USER     → nome do usuário logado
    #   $HOME     → diretório home do usuário (/home/fulano)
    #   $SHELL    → shell padrão do usuário (/bin/bash)
    #   $PWD      → diretório atual (onde você está agora)
    #   $PATH     → lista de diretórios onde o sistema busca comandos
    #   $HOSTNAME → nome da máquina
    #
    # Para ver TODAS as variáveis de ambiente:
    #   env       → mostra só as de ambiente
    #   set       → mostra TODAS (locais + ambiente)

    echo -e "${VERDE}📖 Lição 6: Variáveis de ambiente${RESET}"
    echo "  • Existem antes do script rodar (definidas no login)"
    echo "  • Convenção: sempre escritas em MAIÚSCULAS"
    echo "  • Exemplos: \$USER, \$HOME, \$SHELL, \$PWD"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 7: ASPAS DUPLAS vs SIMPLES
    # ──────────────────────────────────────────────────────────────
    # ASPAS DUPLAS "..."  → EXPANDEM variáveis ($USER vira o valor)
    # ASPAS SIMPLES '...' → tudo é LITERAL ($USER fica como $USER)
    #
    # Exemplos:
    #   echo "Usuário: $USER"  → Usuário: maria
    #   echo 'Usuário: $USER'  → Usuário: $USER
    #
    # REGRA DE OURO: Na dúvida, use aspas duplas.
    # Só use aspas simples quando QUER que o $ apareça como texto.

    echo -e "${VERDE}📖 Lição 7: Aspas duplas vs simples${RESET}"
    echo "  • Duplas expandem: \$USER → \$USER"
    echo "  • Simples são literais: '\$USER' → \$USER"
    echo ""

    echo "===== INFORMAÇÕES DO SISTEMA ====="
    echo "Usuário......: $USER"
    echo "Home.........: $HOME"
    echo "Shell........: $SHELL"
    echo "Diretório....: $PWD"
    echo "Hostname.....: $(hostname)"
    echo "=================================="

    # Demonstração da diferença aspas duplas vs simples
    echo ""
    echo -e "${AMARELO}DEMONSTRAÇÃO — Aspas duplas vs simples:${RESET}"
    echo "  Com aspas duplas → echo \"\$HOME\" → $HOME"
    echo '  Com aspas simples → echo '"'"'$HOME'"'"' → $HOME'

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo variaveis.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  echo "===== INFORMAÇÕES DO SISTEMA ====="'
    echo '  echo "Usuário......: $USER"'
    echo '  echo "Home.........: $HOME"'
    echo '  echo "Shell........: $SHELL"'
    echo '  echo "Diretório....: $PWD"'
    echo '  echo "Hostname.....: $(hostname)"'
    echo -e '  echo "=================================="'"${RESET}"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 4 — verificar.sh                      ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_4() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 4 — verificar.sh                         ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: testes condicionais, operadores de arq.  ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 8: TESTES CONDICIONAIS COM [[ ]]
    # ──────────────────────────────────────────────────────────────
    # [[ condição ]] avalia uma expressão e retorna:
    #   0 → VERDADEIRO (sucesso)
    #   1 → FALSO (falha)
    #
    # ⚠️  ATENÇÃO: Isso é o INVERSO de outras linguagens!
    #     No Linux, código 0 = sucesso = verdadeiro.
    #     Qualquer outro número = erro = falso.
    #     Isso porque existem muitos tipos de erro, mas só um sucesso.
    #
    # OPERADORES DE TESTE DE ARQUIVO:
    #   -f arquivo  → é um arquivo REGULAR? (não é diretório/link/etc.)
    #   -d arquivo  → é um DIRETÓRIO?
    #   -r arquivo  → tem permissão de LEITURA?
    #   -w arquivo  → tem permissão de ESCRITA?
    #   -x arquivo  → tem permissão de EXECUÇÃO?
    #   -s arquivo  → NÃO está vazio? (tamanho > 0)
    #   -e arquivo  → o arquivo EXISTE?
    #
    # ESPAÇOS SÃO OBRIGATÓRIOS:
    #   [[ -f "$arq" ]]   ← CORRETO (espaços após [[ e antes de ]])
    #   [[-f "$arq"]]     ← ERRADO! Bash não entende.

    echo -e "${VERDE}📖 Lição 8: Testes condicionais${RESET}"
    echo "  • [[ condição ]] avalia expressões e retorna 0 (verdadeiro)"
    echo "  • No Linux: 0 = sucesso, outros = erro"
    echo "  • ESPAÇOS são OBRIGATÓRIOS: [[ -f \$arq ]] ✓"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 9: O PADRÃO  && ... || ...
    # ──────────────────────────────────────────────────────────────
    # O Bash tem operadores de "curto-circuito":
    #
    #   comando && faz_se_sucesso || faz_se_falha
    #
    # Funciona assim:
    #   1. O Bash executa 'comando'
    #   2. Se retornou 0 (sucesso): executa o que está depois de &&
    #   3. Se retornou 1 (falha):   executa o que está depois de ||
    #
    # É um atalho para:
    #   if [[ condição ]]; then
    #       faz_se_sucesso
    #   else
    #       faz_se_falha
    #   fi
    #
    # Exemplo prático:
    #   [[ -f "/etc/passwd" ]] && echo "Existe!" || echo "Não existe!"

    echo -e "${VERDE}📖 Lição 9: Operadores && e ||${RESET}"
    echo "  • && (e): executa se o anterior deu sucesso"
    echo "  • || (ou): executa se o anterior falhou"
    echo "  • Padrão: comando && faz_se_ok || faz_se_erro"
    echo ""

    read -p "Digite o caminho de um arquivo ou diretório: " ARQUIVO

    if [[ -z "$ARQUIVO" ]]; then
        # -z testa se a string está VAZIA (zero length)
        echo -e "${VERMELHO}Nenhum caminho informado.${RESET}"
        return
    fi

    echo ""
    echo "Verificando: $ARQUIVO"
    echo ""

    # Cada teste verifica um atributo e imprime o resultado
    [[ -e "$ARQUIVO" ]] && echo "[✓] O caminho existe" || echo "[✗] O caminho NÃO existe"
    [[ -f "$ARQUIVO" ]] && echo "[✓] É um arquivo regular" || echo "[✗] Não é um arquivo regular"
    [[ -d "$ARQUIVO" ]] && echo "[✓] É um diretório" || echo "[✗] Não é um diretório"
    [[ -r "$ARQUIVO" ]] && echo "[✓] Tem permissão de leitura" || echo "[✗] Não tem permissão de leitura"
    [[ -w "$ARQUIVO" ]] && echo "[✓] Tem permissão de escrita" || echo "[✗] Não tem permissão de escrita"
    [[ -x "$ARQUIVO" ]] && echo "[✓] Tem permissão de execução" || echo "[✗] Não tem permissão de execução"

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo verificar.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  ARQUIVO="$1"'
    echo '  echo "Verificando: $ARQUIVO"'
    echo '  [[ -f "$ARQUIVO" ]] && echo "[✓] Arquivo regular" || echo "[✗] Não é arquivo"'
    echo '  [[ -d "$ARQUIVO" ]] && echo "[✓] Diretório" || echo "[✗] Não é diretório"'
    echo '  [[ -r "$ARQUIVO" ]] && echo "[✓] Leitura OK" || echo "[✗] Sem leitura"'
    echo '  [[ -w "$ARQUIVO" ]] && echo "[✓] Escrita OK" || echo "[✗] Sem escrita"'
    echo -e '  [[ -x "$ARQUIVO" ]] && echo "[✓] Execução OK" || echo "[✗] Sem execução"'"${RESET}"
    echo ""
    echo -e "${AMARELO}EXECUÇÃO:${RESET}  ./verificar.sh /etc/passwd"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 5 — parametros.sh                     ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_5() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 5 — parametros.sh                        ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: variáveis especiais \$0 \$# \$@ \$\$ \$?     ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 10: VARIÁVEIS ESPECIAIS DO BASH
    # ──────────────────────────────────────────────────────────────
    # O Bash cria automaticamente variáveis especiais que contêm
    # informações úteis sobre o script e sua execução.
    #
    # ┌──────────┬──────────────────────────────────────────────────┐
    # │ Variável │ O que contém                                    │
    # ├──────────┼──────────────────────────────────────────────────┤
    # │ $0       │ Nome do script (como foi chamado)               │
    # │ $1..$9   │ Argumentos posicionais (1º ao 9º)               │
    # │ $#       │ QUANTIDADE de argumentos recebidos              │
    # │ $@       │ TODOS os argumentos (como lista separada)       │
    # │ $*       │ TODOS os argumentos (como uma string única)     │
    # │ $$       │ PID (Process ID) do shell atual                 │
    # │ $?       │ Código de saída do ÚLTIMO comando executado     │
    # │ $!       │ PID do último processo em BACKGROUND            │
    # └──────────┴──────────────────────────────────────────────────┘
    #
    # DIFERENÇA entre $@ e $*:
    #   Com aspas, "$@" preserva cada argumento como item separado:
    #     "./script.sh" "arg 1" "arg 2" → 2 itens
    #   Já "$*" junta tudo:
    #     "./script.sh" "arg 1 arg 2" → 1 item
    #   Na prática, use "$@" — é mais seguro.
    #
    # Sobre $?:
    #   Todo comando no Linux retorna um código ao terminar:
    #     0 = sucesso (tudo OK)
    #     1-255 = algum tipo de erro
    #   $? guarda o código do comando MAIS RECENTE.

    echo -e "${VERDE}📖 Lição 10: Variáveis especiais${RESET}"
    echo "  • Criadas automaticamente pelo shell"
    echo "  • Exclusivas do Shell (não existem em outras linguagens)"
    echo ""
    echo -e "${AMARELO}TABELA DE REFERÊNCIA:${RESET}"
    echo "  \$0   → Nome do script"
    echo "  \$#   → Quantidade de argumentos"
    echo "  \$@   → Lista de todos os argumentos"
    echo "  \$\$   → PID do processo atual"
    echo "  \$?   → Status do último comando (0=OK)"
    echo ""

    # Demonstração real com valores do script atual
    echo -e "${AMARELO}VALORES REAIS NESTE MOMENTO:${RESET}"
    echo "  Nome do script...: $0"
    echo "  Nº de parâmetros.: $#"
    echo "  Parâmetros.......: $@"
    echo "  PID do shell.....: $$"
    echo "  Status anterior..: $?"

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo parametros.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  echo "Nome do script...: $0"'
    echo '  echo "Nº de parâmetros.: $#"'
    echo '  echo "Parâmetros.......: $@"'
    echo '  echo "PID do shell.....: $$"'
    echo -e '  echo "Status anterior..: $?"'"${RESET}"
    echo ""
    echo -e "${AMARELO}EXECUÇÃO:${RESET}  ./parametros.sh linux shell bash script"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                    EXERCÍCIO 6 — continuar.sh                      ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_6() {
    separador
    echo -e "${MAGENTA}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}║   EXERCÍCIO 6 — continuar.sh                         ║${RESET}"
    echo -e "${MAGENTA}║   Conceitos: if/elif/else/fi, read + condições        ║${RESET}"
    echo -e "${MAGENTA}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 11: ESTRUTURA CONDICIONAL if/elif/else/fi
    # ──────────────────────────────────────────────────────────────
    # A estrutura condicional do Bash:
    #
    #   if [[ condição ]]; then
    #       # bloco executado se condição for VERDADEIRA
    #   elif [[ outra_condição ]]; then
    #       # bloco se a segunda condição for verdadeira
    #   else
    #       # bloco se NENHUMA condição for verdadeira
    #   fi
    #
    # REGRAS IMPORTANTES:
    #   1. O 'fi' é OBRIGATÓRIO — é o 'if' ao contrário, fecha o bloco
    #   2. O 'then' é OBRIGATÓRIO após a condição
    #   3. O ';' antes de 'then' permite que fiquem na mesma linha
    #      (sem o ';', 'then' precisa ficar na linha de baixo)
    #   4. 'elif' e 'else' são opcionais
    #
    # COMPARAÇÃO DE STRINGS (texto):
    #   ==  → igual
    #   !=  → diferente
    #   -z  → string vazia (zero length)
    #   -n  → string NÃO vazia (non-zero length)

    echo -e "${VERDE}📖 Lição 11: Estrutura if/elif/else/fi${RESET}"
    echo "  • Estrutura de decisão condicional"
    echo "  • 'fi' é OBRIGATÓRIO (fecha o if)"
    echo "  • == para textos, -eq para números"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 12: O PIPE ( | )
    # ──────────────────────────────────────────────────────────────
    # O pipe | conecta a SAÍDA de um comando à ENTRADA de outro.
    # É como um cano — os dados fluem da esquerda para a direita.
    #
    # ps aux | head -20
    #   ↓ ps aux gera centenas de linhas
    #   ↓ o pipe | envia essas linhas para head
    #   ↓ head -20 mostra apenas as 20 primeiras
    #
    # Pode encadear vários:
    #   ps aux | grep firefox | wc -l
    #   (lista tudo) → (filtra "firefox") → (conta as linhas)

    echo -e "${VERDE}📖 Lição 12: O operador pipe (|)${RESET}"
    echo "  • Conecta a saída de um comando à entrada de outro"
    echo "  • Dados fluem: esquerda → direita"
    echo "  • Pode encadear vários: cmd1 | cmd2 | cmd3"
    echo ""

    read -p "Deseja listar os processos do sistema? [s/n]: " resposta

    if [[ "$resposta" == "s" ]]; then
        echo ""
        echo -e "${AMARELO}--- Processos ativos (primeiros 20) ---${RESET}"
        ps aux | head -20
        echo -e "${AMARELO}--- Fim da listagem ---${RESET}"

    elif [[ "$resposta" == "n" ]]; then
        echo "Operação cancelada."
        # Nota: num script separado usaríamos 'exit' aqui.
        # Como estamos dentro de uma função, usamos 'return'.

    else
        echo -e "${VERMELHO}Opção inválida. Use 's' ou 'n'.${RESET}"
    fi

    separador
    echo -e "${AMARELO}CÓDIGO EQUIVALENTE em arquivo continuar.sh:${RESET}"
    echo ""
    echo -e "${BRANCO}  #!/bin/bash"
    echo '  read -p "Deseja listar os processos? [s/n]: " resposta'
    echo ''
    echo '  if [[ "$resposta" == "s" ]]; then'
    echo '      ps aux | head -20'
    echo '  elif [[ "$resposta" == "n" ]]; then'
    echo '      echo "Operação cancelada."'
    echo '      exit 0'
    echo '  else'
    echo '      echo "Opção inválida."'
    echo '      exit 1'
    echo -e '  fi'"${RESET}"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║              🔥 DESAFIO — monitor.sh (nível médio)                 ║
# ╚══════════════════════════════════════════════════════════════════════╝

exercicio_desafio() {
    separador
    echo -e "${VERMELHO}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${VERMELHO}║   🔥 DESAFIO — monitor.sh (nível médio)              ║${RESET}"
    echo -e "${VERMELHO}║   Conceitos: while, case, funções, grep, kill, >     ║${RESET}"
    echo -e "${VERMELHO}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 13: LOOP INFINITO COM while true
    # ──────────────────────────────────────────────────────────────
    # while true; do
    #     # comandos que repetem infinitamente
    #     # até encontrar 'break' (sai do loop) ou 'exit' (sai do script)
    # done
    #
    # 'true' é um comando que SEMPRE retorna 0 (sucesso).
    # Então o 'while' nunca para sozinho — precisa de 'break' ou 'exit'.
    #
    # 'done' fecha o 'while' (assim como 'fi' fecha 'if').

    echo -e "${VERDE}📖 Lição 13: Loop infinito com while true${RESET}"
    echo "  • Repete um bloco de comandos infinitamente"
    echo "  • Para com 'break' (sai do loop) ou 'exit' (sai do script)"
    echo "  • 'done' é OBRIGATÓRIO (fecha o while)"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 14: ESTRUTURA case/esac
    # ──────────────────────────────────────────────────────────────
    # case $variavel in
    #     valor1) comandos ;;    ← ;; = fim deste caso
    #     valor2) comandos ;;
    #     *)      comandos ;;    ← * = qualquer outra coisa (default)
    # esac                       ← 'case' ao contrário, fecha o bloco
    #
    # É mais limpo que vários if/elif quando há muitas opções.
    # Equivale ao switch/case do C, Java, JavaScript.
    #
    # O padrão * (asterisco) captura TUDO que não foi listado acima.
    # É o "else" do case.

    echo -e "${VERDE}📖 Lição 14: Estrutura case/esac${RESET}"
    echo "  • Like a switch: avalia múltiplas opções"
    echo "  • ;; finaliza cada caso. * é o padrão (default)"
    echo "  • 'esac' é OBRIGATÓRIO (fecha o case)"
    echo ""

    # ──────────────────────────────────────────────────────────────
    # LIÇÃO 15: REDIRECIONAMENTO PARA ARQUIVOS
    # ──────────────────────────────────────────────────────────────
    # >  arquivo  → CRIA o arquivo (ou SOBRESCREVE se já existir)
    # >> arquivo  → ACRESCENTA ao final do arquivo (append)
    #
    # Exemplo:
    #   echo "Olá" > log.txt     → cria log.txt com "Olá"
    #   echo "Mundo" >> log.txt  → acrescenta "Mundo" ao final
    #
    # Para redirecionar UM BLOCO inteiro de comandos:
    #   {
    #       echo "linha 1"
    #       echo "linha 2"
    #       ps aux
    #   } > relatorio.txt
    #
    # 2>/dev/null  → redireciona erros para o "buraco negro" (descarta)
    # 2>&1         → redireciona erros para a mesma saída padrão

    echo -e "${VERDE}📖 Lição 15: Redirecionamento para arquivos${RESET}"
    echo "  • > cria ou sobrescreve arquivo"
    echo "  • >> acrescenta ao final do arquivo"
    echo "  • {comandos} > arquivo redireciona um bloco"
    echo ""

    pausar

    # ──────────────────────────────────────────────────────────────
    # AQUI COMEÇA O MONITOR EM SI
    # ──────────────────────────────────────────────────────────────

    while true; do
        echo ""
        echo -e "${CIANO}========================================${RESET}"
        echo -e "${CIANO}   MONITOR DE PROCESSOS — Linux v1.0${RESET}"
        echo -e "${CIANO}========================================${RESET}"
        echo -e "  ${VERDE}[1]${RESET} Listar todos os processos ativos"
        echo -e "  ${VERDE}[2]${RESET} Buscar processo por nome"
        echo -e "  ${VERDE}[3]${RESET} Exibir informações do sistema"
        echo -e "  ${VERDE}[4]${RESET} Encerrar um processo por PID"
        echo -e "  ${VERDE}[5]${RESET} Exportar relatório do sistema"
        echo -e "  ${VERMELHO}[0]${RESET} Sair do desafio"
        echo -e "${CIANO}========================================${RESET}"

        read -p "Escolha uma opção: " opcao

        case $opcao in

            1)
                # OPÇÃO 1: Listar processos
                # ps aux = lista todos os processos, de todos os usuários
                # head -30 = limita a 30 linhas para não inundar a tela
                echo ""
                echo -e "${AMARELO}--- Processos ativos (primeiros 30) ---${RESET}"
                ps aux | head -30
                echo -e "${AMARELO}--- Fim ---${RESET}"
                ;;

            2)
                # OPÇÃO 2: Buscar processo por nome
                # grep filtra linhas que contêm o texto buscado
                # grep -v grep = remove a própria linha do grep dos resultados
                #   (porque 'grep firefox' aparece como processo também)
                echo ""
                read -p "Nome do processo: " proc_nome

                if [[ -z "$proc_nome" ]]; then
                    echo -e "${VERMELHO}Nome vazio.${RESET}"
                else
                    echo -e "${AMARELO}--- Resultados para '$proc_nome' ---${RESET}"
                    ps aux | grep "$proc_nome" | grep -v grep
                    echo -e "${AMARELO}--- Fim ---${RESET}"
                fi
                ;;

            3)
                # OPÇÃO 3: Informações do sistema
                # whoami = retorna o nome do usuário logado
                # hostname = retorna o nome da máquina
                # uptime -p = tempo ligado em formato legível
                # wc -l = conta linhas (word count -lines)
                echo ""
                echo -e "${AMARELO}===== INFORMAÇÕES DO SISTEMA =====${RESET}"

                USUARIO=$(whoami)
                HOST=$(hostname)
                DATA_HORA=$(date "+%d/%m/%Y %H:%M:%S")
                TEMPO=$(uptime -p 2>/dev/null || uptime)
                TOTAL=$(ps aux | wc -l)
                TOTAL=$(( TOTAL - 1 ))  # -1 porque a 1ª linha é cabeçalho

                echo "Usuário......: $USUARIO"
                echo "Hostname.....: $HOST"
                echo "Data/Hora....: $DATA_HORA"
                echo "Uptime.......: $TEMPO"
                echo "Shell........: $SHELL"
                echo "Processos....: $TOTAL ativos"
                echo -e "${AMARELO}==================================${RESET}"
                ;;

            4)
                # OPÇÃO 4: Encerrar processo por PID
                # kill PID = envia SIGTERM (sinal 15) — pede para encerrar
                # kill -9 PID = envia SIGKILL — FORÇA o encerramento
                # Usamos kill normal primeiro (é mais educado)
                # $? depois do kill nos diz se funcionou (0) ou não (≠0)
                echo ""
                read -p "PID do processo: " pid

                # Validação: verifica se é um número
                # =~ é operador de regex (expressão regular)
                # ^[0-9]+$ = começa com dígitos e termina com dígitos
                if [[ ! "$pid" =~ ^[0-9]+$ ]]; then
                    echo -e "${VERMELHO}PID inválido. Deve ser um número.${RESET}"
                else
                    read -p "Encerrar processo $pid? [s/n]: " confirma
                    if [[ "$confirma" == "s" ]]; then
                        kill "$pid" 2>/dev/null
                        if [[ $? -eq 0 ]]; then
                            echo -e "${VERDE}Sinal enviado ao processo $pid.${RESET}"
                        else
                            echo -e "${VERMELHO}Falha. O processo pode não existir.${RESET}"
                        fi
                    else
                        echo "Cancelado."
                    fi
                fi
                ;;

            5)
                # OPÇÃO 5: Exportar relatório
                # O bloco { } agrupa comandos
                # > redireciona TODA a saída para o arquivo
                # date +%d%m%Y_%H%M%S = timestamp no nome (unicidade)
                echo ""
                NOME_REL="relatorio_$(date +%d%m%Y_%H%M%S).txt"

                {
                    echo "============================================"
                    echo "  RELATÓRIO DO SISTEMA"
                    echo "  Gerado em: $(date '+%d/%m/%Y %H:%M:%S')"
                    echo "============================================"
                    echo ""
                    echo "Usuário: $(whoami)"
                    echo "Hostname: $(hostname)"
                    echo "Uptime: $(uptime -p 2>/dev/null || uptime)"
                    echo "Shell: $SHELL"
                    echo "Total processos: $(ps aux | wc -l)"
                    echo ""
                    echo "--- Lista de Processos ---"
                    ps aux
                } > "$NOME_REL"

                echo -e "${VERDE}Relatório salvo: $NOME_REL${RESET}"
                echo "Tamanho: $(du -h "$NOME_REL" | cut -f1)"
                ;;

            0)
                echo ""
                echo -e "${VERDE}Encerrando monitor... Até logo!${RESET}"
                break  # Sai do while, retorna ao menu principal
                ;;

            *)
                echo -e "${VERMELHO}Opção inválida. Tente novamente.${RESET}"
                ;;
        esac
    done
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                RESUMO: ERROS COMUNS DOS ALUNOS                     ║
# ╚══════════════════════════════════════════════════════════════════════╝

erros_comuns() {
    separador
    echo -e "${VERMELHO}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${VERMELHO}║   ⚠️  ERROS COMUNS — Leia antes de entregar!         ║${RESET}"
    echo -e "${VERMELHO}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo ""
    echo -e "  ${VERMELHO}ERRO${RESET}                         ${VERDE}CORREÇÃO${RESET}"
    echo "  ────────────────────────────  ────────────────────────────"
    echo "  X = 10   (espaços no =)      X=10   (sem espaços)"
    echo '  [[$var=="s"]] (sem espaços)  [[ $var == "s" ]] (com espaços)'
    echo "  Esqueceu fi                  if...then...fi (sempre fechar)"
    echo "  Esqueceu done               while...do...done (sempre fechar)"
    echo "  Esqueceu esac               case...in...esac (sempre fechar)"
    echo '  echo $var  (sem aspas)       echo "$var" (com aspas duplas)'
    echo "  Esqueceu chmod +x           chmod +x script.sh"
    echo "  read (sem variável)          read nome_variavel"
    echo '  if [ $x = 5 ] (números)     if [[ $x -eq 5 ]] (usar -eq)'
    echo ""
    echo -e "  ${AMARELO}LEMBRE-SE:${RESET}"
    echo "  → if  fecha com fi    (if ao contrário)"
    echo "  → case fecha com esac (case ao contrário)"
    echo "  → while fecha com done"
    echo "  → O Bash é CASE-SENSITIVE: \$HOME ≠ \$home"
    echo ""
    echo -e "  ${AMARELO}DEPURAÇÃO:${RESET}"
    echo "  → Use  bash -x script.sh  para ver cada comando executado"
    echo "  → Use  echo \$?  após um comando para ver se deu erro"

    pausar
}


# ╔══════════════════════════════════════════════════════════════════════╗
# ║                      MENU PRINCIPAL                                ║
# ╚══════════════════════════════════════════════════════════════════════╝
#
# Este é o ponto de entrada do programa.
# Tudo acima são DEFINIÇÕES de funções — elas só são executadas
# quando CHAMADAS pelo nome.
#
# Este while true cria o menu principal que permite navegar
# entre os exercícios.

clear

echo -e "${CIANO}"
echo "  ╔══════════════════════════════════════════════════════════╗"
echo "  ║                                                          ║"
echo "  ║   🐧  COM104 — GABARITO DIDÁTICO DE SHELL SCRIPT         ║"
echo "  ║                                                          ║"
echo "  ║   Aula 11: Administração Linux e Comandos Essenciais     ║"
echo "  ║   Prof: João Pedro Gress                                 ║"
echo "  ║                                                          ║"
echo "  ╚══════════════════════════════════════════════════════════╝"
echo -e "${RESET}"
echo ""
echo -e "  ${AMARELO}Este script é um gabarito interativo.${RESET}"
echo -e "  Cada exercício EXECUTA e ENSINA ao mesmo tempo."
echo -e "  Leia os comentários no código-fonte para aprender mais."
echo ""

while true; do
    separador
    echo -e "${BRANCO}  MENU PRINCIPAL — Escolha um exercício:${RESET}"
    echo ""
    echo -e "  ${VERDE}[1]${RESET} Exercício 1 — saudacao.sh     (echo, read, date)"
    echo -e "  ${VERDE}[2]${RESET} Exercício 2 — soma.sh         (parâmetros, aritmética)"
    echo -e "  ${VERDE}[3]${RESET} Exercício 3 — variaveis.sh    (variáveis de ambiente)"
    echo -e "  ${VERDE}[4]${RESET} Exercício 4 — verificar.sh    (testes de arquivo)"
    echo -e "  ${VERDE}[5]${RESET} Exercício 5 — parametros.sh   (variáveis especiais)"
    echo -e "  ${VERDE}[6]${RESET} Exercício 6 — continuar.sh    (if/else, pipe)"
    echo -e "  ${VERMELHO}[7]${RESET} 🔥 DESAFIO  — monitor.sh     (tudo junto!)"
    echo -e "  ${AMARELO}[8]${RESET} ⚠️  Erros comuns dos alunos"
    echo -e "  ${VERMELHO}[0]${RESET} Sair"
    echo ""
    read -p "  Opção: " escolha

    case $escolha in
        1) exercicio_1 ;;
        2) exercicio_2 ;;
        3) exercicio_3 ;;
        4) exercicio_4 ;;
        5) exercicio_5 ;;
        6) exercicio_6 ;;
        7) exercicio_desafio ;;
        8) erros_comuns ;;
        0)
            echo ""
            echo -e "  ${VERDE}Bons estudos! 🚀${RESET}"
            echo ""
            exit 0
            ;;
        *)
            echo -e "  ${VERMELHO}Opção inválida.${RESET}"
            ;;
    esac
done
