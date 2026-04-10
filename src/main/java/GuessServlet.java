import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Random;

public class GuessServlet extends HttpServlet {

    private int numberToGuess;

    public void init() {
        Random rand = new Random();
        numberToGuess = rand.nextInt(10) + 1;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int guess = Integer.parseInt(request.getParameter("userGuess"));
        String message;

        if (guess < numberToGuess) {
            message = "Too Low!";
        } else if (guess > numberToGuess) {
            message = "Too High!";
        } else {
            message = "🎉 Correct Guess!";
        }

        request.setAttribute("result", message);
        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
