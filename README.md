# 🌐 Whois Recon em Bash

Este projeto consiste em um **script Bash simples e eficiente** para **reconhecimento de informações de domínio/IP**, utilizando a ferramenta **WHOIS**.

Ele automatiza a coleta e filtragem de dados relevantes, facilitando a análise durante fases iniciais de **pentest, OSINT e footprinting**.

---

## 📌 Aviso Legal

> ⚠️ **Uso restrito**:  
> Este script deve ser utilizado **apenas em ambientes autorizados**, como:
> - Laboratórios próprios  
> - Ambientes de estudo  
> - Sistemas com permissão explícita  
>
> O uso indevido pode violar legislações como:
> - **Lei Carolina Dieckmann (Lei nº 12.737/2012)**  
> - **Lei Geral de Proteção de Dados – LGPD (Lei nº 13.709/2018)**

---

## 🛠️ Ferramentas Utilizadas

- **Bash**
- **WHOIS**
- **Grep / Egrep**

---

## 📂 Estrutura do Script

- Validação de argumentos (domínio/IP obrigatório)
- Banner ASCII para identificação visual
- Execução do comando `whois`
- Filtragem inteligente de informações relevantes
- Remoção de arquivos temporários

---

## ⚙️ Funcionamento Detalhado

### 1️⃣ Validação de Parâmetro

O script exige que um **domínio ou IP** seja informado como argumento.

```bash
./whois.sh example.com
```

Caso nenhum argumento seja passado, o script exibe a forma correta de uso.

---

### 2️⃣ Execução do WHOIS

O comando:
```bash
whois alvo
```
é executado e o resultado é salvo temporariamente em um arquivo.

---

### 3️⃣ Filtragem de Resultados

O script remove comentários e informações irrelevantes, exibindo apenas campos úteis como:

- `inetnum`
- `route`
- `domain`
- `owner`
- `responsible`
- `nserver`
- `e-mail`
- `person`
- `source`

Isso facilita a análise rápida de:

- Blocos de IP
- Responsáveis legais
- Servidores DNS
- Contatos administrativos

---

### 4️⃣ Limpeza

Após a exibição dos dados filtrados, o arquivo temporário é removido automaticamente.

---

## 📚 Referências

- https://linux.die.net/man/1/whois  
- https://www.iana.org/whois

## 🚨 AVISO

> ⚠️ Este projeto deverá ser utilizado **apenas para fins educacionais, éticos e legais**.

## 👨‍💻 Autor

**Alexandre Oliveira**  
Pentester | Cybersecurity Analyst  

## License / Licença

This project is licensed under the MIT License.
See the **LICENSE** file for more details.

Este projeto está licenciado sob a Licença MIT.
Consulte o arquivo **LICENSE** para mais informações.

---

⭐ Se este projeto te ajudou, considere dar um **star no GitHub**!
