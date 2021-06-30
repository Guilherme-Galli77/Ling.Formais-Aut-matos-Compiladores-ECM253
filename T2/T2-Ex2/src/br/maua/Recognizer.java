package br.maua;

public class Recognizer {
    // Relevant states
    public static final int INITIAL = 0;
    public static final int[] FINAL = {1, 3, 5, 6};
    public static final int ERROR = 7;
    // Symbol constants
    public static final int DIGIT = 0;
    public static final int SIGNAL = 1;
    public static final int POINT = 2;
    public static final int NOTACAO = 3;
    public static final int OTHER = 4;


    private int[][] table = {
            {1, 2, 7, 7, 7},
            {1, 7, 3, 4, 7},
            {1, 7, 7, 7, 7},
            {5, 7, 7, 7, 7},
            {6, 6, 7, 7, 7},
            {5, 7, 7, 4, 7},
            {6, 7, 7, 7, 7}
            };

    private int currentState;
    // Constructor (empty)

    public Recognizer() {
    }

    public String recognize(String s) throws NumberFormatException {

        int pos = 0;
        String number = "";
        int signal = 1;
        currentState = INITIAL;

        while (pos < s.length()) {
            char c = s.charAt(pos);
            int symbol = getSymbol(c);
            currentState = table[currentState][symbol];

            if (currentState == ERROR) {
                throw new NumberFormatException(s + " is not a number!");
            }

            if (symbol == DIGIT) {
                number = number + c;
            }

            if (symbol == SIGNAL) {
                number = number + c;
            }

            if (symbol == POINT) {
                number = number + c;
            }

            if (symbol == NOTACAO) {
                number = number + c;
            }
            pos++;
        }
        if (currentState != FINAL[0] && currentState != FINAL[1] && currentState != FINAL[2] && currentState != FINAL[3]) {
            throw new NumberFormatException(s + " is not a number!");
        }
        return number;
    }


    private int getSymbol(char c) {
        if (Character.isDigit(c)) {
            return DIGIT;

        } else if (c == '-' || c == '+') {
            return SIGNAL;

        } else if (c == '.') {
            return POINT;

        } else if (c == 'E' || c == 'e') {
            return NOTACAO;

        } else {
            return OTHER;
        }

    }
}