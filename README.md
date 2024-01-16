# Filefind

O script ```filefind.sh``` é uma ferramenta desenvolvida em bash de busca de arquivos em um determinado alvo (URL) usando uma lista de palavras-chave fornecida. A busca é realizada através de uma consulta no Google, usando o Lynx para obter os resultados.

<br>

---

<br>

## **Modo de uso**

```bash
./filefind.sh <alvo> <tipo de arquivo>
```


## **Exemplo de uso**

```bash
./filefind.sh businesscorp.com.br php
```

## **Exemplo de saída**

```bash
------------------------------------
| Pk's Academy - File Find |
------------------------------------
Resultado encontrado: businesscorp.com.br/diretorio1 (Código de Status: 200)
Resultado encontrado: businesscorp.com.br/diretorio2 (Código de Status: 301)
------------------------------------
```
<br>

---

<br>

## **Funcionalidades**

1. Busca por arquivos em um alvo específico usando uma extensão específica.
2. Exibe os resultados em cores distintas para fácil identificação.

<br>

---

<br>

## **Observação**

O script utiliza a pesquisa no Google para encontrar arquivos com base no alvo e na extensão fornecidos.

<br>

## **Avisos**

1. O uso indevido desta ferramenta pode violar leis e regulamentos locais. Certifique-se de compreender e seguir as leis antes de realizar qualquer teste de segurança.
2. Este script deve ser usado apenas em ambientes autorizados e para fins educacionais.
3. Certifique-se de ter permissão adequada antes de realizar testes em sistemas ou redes.
4. A utilização irresponsável de ferramentas de busca de arquivos pode resultar em consequências legais.


































