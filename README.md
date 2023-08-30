# Infraestrutura de Hardware - Projeto RISC-V Pipeline 🚀

Integrantes da Equipe:
- `Rafael Alves` *(raas)*
- `Ian Melo` *(imm2)*
- `João Victor Fellows` *(jvfr)*
- `Henrique Amorin` *(hlpaa)*

Este repositório contém os arquivos base para o projeto da disciplina Infraestrutura de Hardware (IF674) no CIn-UFPE. O objetivo do projeto é implementar instruções em um processador RISC-V usando SystemVerilog.

---

## 📝 Instruções

A tabela abaixo mostra o status das instruções implementadas até o momento:

| # | Instrução | Implementada | Testada | Funcionando |
|---|-----------|:-----------:|:-------:|:-----------:|
| 1 | `BEQ`     |     ✅     |   ✅   |     ✅     |
| 2 | `LW`      |     ✅     |   ✅   |     ✅     |
| 3 | `SW`      |     ✅     |   ✅   |     ✅     |
| 4 | `ADD`     |     ✅     |   ✅   |     ✅     |
| 5 | `AND`     |     ✅     |   ✅   |     ✅     |

Seu objetivo é implementar as instruções restantes listadas abaixo:

| # | Instrução | Implementada | Testada | Funcionando |
|---|-----------|:-----------:|:-------:|:-----------:|
| 1  | `JAL`     |      ✅     |    ✅    |      ✅      |
| 2  | `JALR`    |      ✅     |    ✅    |      ✅      |
| 3  | `BNE`     |      ✅     |    ✅    |      ✅      |
| 4  | `BLT`     |      ✅     |    ✅    |      ✅      |
| 5  | `BGE`     |      ✅     |    ✅    |      ✅      |
| 6  | `LB`      |      ✅     |    ✅    |      ✅      |
| 7  | `LH`      |      ✅     |    ✅    |      ✅      |
| 8  | `LBU`     |      ✅     |    ✅    |      ✅      |
| 9  | `SB`      |      ✅     |    ✅    |      ✅      |
| 10 | `SH`      |      ✅     |    ✅    |      ✅      |
| 11 | `SLTI`    |      ✅     |    ✅    |      ✅      |
| 12 | `ADDI`    |      ✅     |    ✅    |      ✅      |
| 13 | `SLLI`    |      ✅     |    ✅    |      ✅      |
| 14 | `SRLI`    |      ✅     |    ✅    |      ✅      |
| 15 | `SRAI`    |      ✅     |    ✅    |      ✅      |
| 16 | `SUB`     |      ✅     |    ✅    |      ✅      |
| 17 | `SLT`     |      ✅     |    ✅    |      ✅      |
| 18 | `XOR`     |      ✅     |    ✅    |      ✅      |
| 19 | `OR`      |      ✅     |    ✅    |      ✅      |
| 20 | `LUI`     |      ✅     |    ✅    |      ✅      |
| 21 | `HALT`    |      ✅     |    ✅    |      ✅      |

### Observações

- As instruções de 1 a 20 são parte oficial do conjunto RV32I. A pseudo-instrução `HALT` é uma instrução usada em linguagens de montagem para **indicar o fim de um programa ou pausar sua execução**. Quando o processador encontra a instrução `HALT`, geralmente é acionada uma ação específica, como inserir zeros (ou outro valor pré-determinado) no pipeline do processador e interromper o contador de programa (PC), impedindo a execução de novas instruções. Essa funcionalidade permite que o programador tenha controle sobre o fluxo do programa, indicando explicitamente quando o programa deve terminar.


## 📁 Estrutura do repositório
O repositório está organizado da seguinte forma:
- [`design`](/design): Contém o código-fonte do projeto do processador RISC-V.
- [`doc`](/doc): Contém mais explicações sobre a implementação.
- [`sim`](/sim): Contém os arquivos de simulação e os resultados, para uso nos testes.
- [`verif`](/verif): Contém os arquivos de testbench e as instruções de como testar o projeto.

- Para simular e testar o projeto do processador RISC-V, utilize:
  - [ModelSim-Intel® FPGAs Standard Edition Software Version 20.1.1](https://www.intel.com/content/www/us/en/software-kit/750666/modelsim-intel-fpgas-standard-edition-software-version-20-1-1.html)
