# DTI no software FSL
Neste projecto tem um conjunto de funções uteis para o preprocessamento do DTI com as ferramentas do FSL

## Executar o pré-processamento 
  ```bash
  preprocessament_DTI <dtifile>-0001.dcm <directorioestudo> <nome>
  ```
## Executar TBSS
    * criar os ficheiros design.mat e design.con, ver exemplo na pasta. 
    * Coloca-los na pasta: estudoTBSS
    * vai ser usada a directoria <directorioestudo> usada acima
    ```bash
    TBSSscript <directorioestudoTBSS> <directorioestudo> 
    ```
