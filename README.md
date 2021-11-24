# S206 - Karate Activity
- Test over **[ReqRes API](https://reqres.in/)**

### To get and run this project, You must install:

1. Git Bash
https://gitforwindows.org/

2. Java JDK:
https://www.java.com/

3. Maven
https://maven.apache.org/

4. Your Java IDE (Recommends IntelliJ Idea)
https://www.jetbrains.com/idea/

### Get the project:
Run the following command on the root folder that you wanna use the project:
```
$ git clone <paste link copied from right pane here>
```
### Running the project:
* Open the project directory on your favorite Java IDE;
* Run the tests typing the following command on terminal at project directory:
```
$ mvn test -Dtest=ReqResTestRunner
```
* Go to the end of terminal log messages, and there will be a link to an html tests report;
### Questions and answers (in PT-BR):
**1. Quantas suítes de testes você desenvolveu?**
> Com 7 cenarios de teste ao total.

**2. Os testes desenvolvidos são manuais ou automatizados?**
> Automatizados

**3. Onde os testes se localizam na pirâmide apresentada?**
> Teste de Integração

**4. Os testes desenvolvidos são funcionais ou não-funcionais?**
> Não-funcionais.

**5.Alguns dos testes desenvolvidos são testes Fim-a-Fim (End-To-End)?**
> Sim, pois realiza registro e obtém resposta do banco.
 
**6. O que se deve fazer para que os testes desenvolvidos funcionem em modo regressão?**
> Sempre que acontecer atualizações ao sistema deve rodar os teste para vê se não quebra algo que já estava testado, se quebrar isso indica que o erro foi na atualização do que foi desenvolvido.
