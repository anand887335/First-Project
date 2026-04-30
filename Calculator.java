import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Calculator extends JFrame implements ActionListener {

    JTextField screen;
    String num1 = "", num2 = "", operator = "";

    Calculator() {

        setTitle("Calculator");
        setSize(300, 400);
        setLayout(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Screen
        screen = new JTextField();
        screen.setBounds(20, 20, 240, 40);
        screen.setEditable(false);
        add(screen);

        // Buttons
        String buttons[] = {
            "7","8","9","/",
            "4","5","6","*",
            "1","2","3","-",
            "0","C","=","+"
        };

        int x = 20, y = 80;

        for (int i = 0; i < buttons.length; i++) {

            JButton btn = new JButton(buttons[i]);
            btn.setBounds(x, y, 50, 50);
            btn.addActionListener(this);
            add(btn);

            x += 60;
            if ((i + 1) % 4 == 0) {
                x = 20;
                y += 60;
            }
        }

        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {

        String cmd = e.getActionCommand();

        if (cmd.equals("C")) {
            screen.setText("");
            num1 = num2 = operator = "";
        }

        else if (cmd.equals("+") || cmd.equals("-") || cmd.equals("*") || cmd.equals("/")) {
            num1 = screen.getText();
            operator = cmd;
            screen.setText("");
        }

        else if (cmd.equals("=")) {
            num2 = screen.getText();

            double n1 = Double.parseDouble(num1);
            double n2 = Double.parseDouble(num2);
            double result = 0;

            switch (operator) {
                case "+": result = n1 + n2; break;
                case "-": result = n1 - n2; break;
                case "*": result = n1 * n2; break;
                case "/": result = n1 / n2; break;
            }

            screen.setText(String.valueOf(result));
        }

        else {
            screen.setText(screen.getText() + cmd);
        }
    }

    public static void main(String[] args) {
        new Calculator();
    }
}