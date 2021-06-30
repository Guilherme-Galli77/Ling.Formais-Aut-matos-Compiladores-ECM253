//#####################################################
//# ECM253 – Linguagens Formais, Autômatos e Compiladores - Trabalho 02
//# Exercício 1

//##########################################################
//##  Nome: Fernando Laiser                               ##
//##  Nome: Guilherme Cury Galli                          ## 
//##  Nome: Igor Eiki Ferreira Kubota                     ##
//##########################################################


import java.util.Scanner;


public class PasswordCheck {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);


        System.out.println("Teste de Forca de Senha\n");

        System.out.println("Insira a senha que deseja testar:");
        String senha = scan.next(); 

        
    
        if(senha.matches("(?=.*[0-9]).*(?=.*[a-z]).*(?=.*[A-Z]).*(?=.*[~!@#$%^&*()_-]).*(?=.{8,}).*") ){
            System.out.println("APROVADA");

        } else
            System.out.println("REJEITADA");

        System.out.println("fim do programa");
        
    }
}
