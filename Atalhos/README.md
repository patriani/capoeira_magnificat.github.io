# Atalhos — Magnificat Website

Scripts para facilitar tarefas comuns do projeto.

---

## git_install.bat

**O que faz:** Verifica se o Git está instalado no seu computador. Se não estiver, descarrega e instala a versão mais recente automaticamente.

**Como usar:** Dê duplo clique no ficheiro. Se o Git já estiver instalado, vê a versão atual. Se não estiver, o script trata de tudo.

**Nota:** Após a instalação, pode ser preciso fechar e reabrir o terminal para o Git ficar disponível.

---

## update_web_site.bat
**Requisito: precisa do Git instalado na máquina**
**O que faz:** Envia (push) apenas a pasta `images/` para o GitHub, na branch `main`.

**Como usar:**

1. Dê duplo clique no ficheiro
2. Introduza o seu **nome de utilizador** do GitHub
3. Introduza a sua **password** (ou **token de acesso pessoal** — veja abaixo)

O script faz:
- `git add images/` — prepara as imagens
- `git commit -m "Atualizar imagens"` — regista as alterações
- `git push` — envia para o GitHub

### ⚠️ Importante: Token em vez de password

Desde agosto de 2021, o GitHub **não aceita a password normal** da sua conta para operações via terminal. Para que o script funcione, precisa de criar um **token de acesso pessoal**:

1. Aceda a https://github.com/settings/tokens
2. Clique em **Generate new token (classic)**
3. Escolha um nome qualquer (ex: "magnificat-script")
4. Marque a opção **repo** (dá acesso ao repositório)
5. Clique em **Generate token**
6. **Copie o token** (é mostrado apenas uma vez!)
7. Use esse token como "password" quando o script pedir

---

Qualquer dúvida, fale com o responsável pelo projeto.
