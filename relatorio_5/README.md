# Relatório 5 de PDS — Transformada de Fourier Discreta (TFD)

Guia rápido dos códigos, dos resultados e de como demonstrar tudo no terminal.

## Estrutura

```
relatorio_5/
├── codigos/        parte1.m ... parte4.m   (scripts Octave)
├── figuras/        parte2.png ... parte4.png (gráficos gerados)
├── relatorio_5.tex / .bib / .pdf            (relatório completo)
```

## O que cada código faz

**`parte1.m` — Equações matriciais da TFD**
Monta a matriz $W_N$ (com $N=4$) e usa ela para calcular a TFD de `x=[1,2,3,4]` por multiplicação de matriz (`X = WN*x`), depois reconstrói `x` de volta (`x = (1/N)*conj(WN)*X`). Compara o resultado com a função `fft` nativa do Octave. Não gera figura, só imprime no terminal.

**`parte2.m` — TFTD vs. TFD de 4 pontos**
Para o pulso retangular `x[n]=1` (0≤n≤3): calcula a TFTD inteira (espectro contínuo, por definição/somatório) e a TFD de 4 pontos (via `fft`). Plota as duas sobrepostas para mostrar que a TFD é exatamente a TFTD amostrada em 4 pontos.

**`parte3.m` — Densidade vs. resolução espectral**
Sinal com duas senoides bem próximas em frequência (`cos(0,48πn) + cos(0,52πn)`). Calcula a TFD com `N=11` amostras e com `N=101` amostras, lado a lado, para mostrar que só aumentando o número de amostras reais (não o número de pontos calculados) é possível separar as duas frequências.

**`parte4.m` — Tempo de execução da FFT**
Mede o tempo médio de execução de `fft` para todo `N` de 2 a 2048 (50 repetições por `N`, usando `clock`/`etime`), separando os resultados em `N` primo e `N` composto.

## Explicação rápida para o professor (30 segundos por parte)

1. **Parte I:** "A matriz $W_N$ calcula a TFD igualzinho ao `fft()` do Octave — testei e o erro numérico é da ordem de $10^{-15}$ (zero, é só arredondamento de ponto flutuante)."
2. **Parte II:** "A TFD é simplesmente a TFTD amostrada em pontos específicos — no gráfico, os 4 marcadores vermelhos caem exatamente sobre a curva azul contínua."
3. **Parte III:** "Com poucas amostras (N=11) duas frequências próximas viram um único pico; com mais amostras reais (N=101) elas aparecem separadas. Resolução espectral depende de quanto tempo eu observo o sinal, não de quantos pontos de frequência eu calculo."
4. **Parte IV:** "FFT é mais rápida quando N tem fatores pequenos (2, 3, 5, 7), como potências de 2. Quando N é primo, fica em média 1,8× mais lenta, porque o algoritmo não consegue dividir o problema recursivamente."

## Comandos para demonstrar no terminal

Caminho do Octave usado nesta máquina:
```
D:\Program Files\GNU Octave\Octave-10.3.0\mingw64\bin\octave-cli.exe
```

Abra um terminal (PowerShell) na pasta `relatorio_5/codigos` e rode:

```powershell
cd "C:\Users\mauri\OneDrive\Área de Trabalho\Relatorios-PDS\relatorio_5\codigos"

# Parte I -- mostra a matriz WN e a validação contra fft() (~1s)
& "D:\Program Files\GNU Octave\Octave-10.3.0\mingw64\bin\octave-cli.exe" --no-gui parte1.m

# Parte II -- TFTD vs TFD de 4 pontos, gera figuras/parte2.png (~1s)
& "D:\Program Files\GNU Octave\Octave-10.3.0\mingw64\bin\octave-cli.exe" --no-gui parte2.m

# Parte III -- alta densidade vs alta resolução, gera figuras/parte3.png (~1s)
& "D:\Program Files\GNU Octave\Octave-10.3.0\mingw64\bin\octave-cli.exe" --no-gui parte3.m

# Parte IV -- tempo de execução da fft, gera figuras/parte4.png (~15-20s)
& "D:\Program Files\GNU Octave\Octave-10.3.0\mingw64\bin\octave-cli.exe" --no-gui parte4.m
```

Depois, para abrir as figuras geradas (Windows abre no visualizador padrão):

```powershell
cd "C:\Users\mauri\OneDrive\Área de Trabalho\Relatorios-PDS\relatorio_5\figuras"
ii parte2.png; ii parte3.png; ii parte4.png
```

Para abrir o relatório em PDF direto:

```powershell
ii "C:\Users\mauri\OneDrive\Área de Trabalho\Relatorios-PDS\relatorio_5\relatorio_5.pdf"
```

> `ii` é o alias do PowerShell para `Invoke-Item` (abre o arquivo no programa padrão).
