//#####################################################
//# ECM253 – Linguagens Formais, Autômatos e Compiladores - Trabalho 02
//# Exercício 2

//##########################################################
//##  Nome: Fernando Laiser                               ##
//##  Nome: Guilherme Cury Galli                          ## 
//##  Nome: Igor Eiki Ferreira Kubota                     ##
//##########################################################


package br.maua;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Recognizer rec = new Recognizer();
        Scanner scan = new Scanner(System.in);
        String num1;
        String cont = "s";

        do{
            try {
                String i;

                System.out.println("Insira o número a testar:");
                num1 = scan.nextLine();
                i = rec.recognize(num1);
                System.out.println(i);


            } catch (NumberFormatException ex){
                System.out.println(ex.getMessage());
            }

            System.out.println("Deseja testar denovo? (s/n)");
            cont = scan.nextLine();
            cont = cont.toLowerCase();
        }while (cont.equals("s"));
    }
}